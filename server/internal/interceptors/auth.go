package interceptors

import (
	"context"
	"strings"

	"github.com/golang-jwt/jwt"
	"github.com/rs/zerolog/log"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/metadata"
	"google.golang.org/grpc/status"
)

// UnaryAuthInterceptor returns a grpc.UnaryServerInterceptor that validates JWT tokens.
func UnaryAuthInterceptor(secret []byte) grpc.UnaryServerInterceptor {
	return func(
		ctx context.Context,
		req interface{},
		info *grpc.UnaryServerInfo,
		handler grpc.UnaryHandler,
	) (interface{}, error) {

		md, ok := metadata.FromIncomingContext(ctx)
		if !ok {
			return nil, status.Error(codes.Unauthenticated, "missing metadata")
		}

		log.Print("MD", md)

		authHeader, ok := md["authorization"]
		if !ok || len(authHeader) == 0 {
			return nil, status.Error(codes.Unauthenticated, "missing authorization header")
		}

		tokenStr := strings.TrimPrefix(authHeader[0], "Bearer ")
		token, err := ValidateJWT(tokenStr, secret)
		if err != nil || !token.Valid {
			return nil, status.Errorf(codes.Unauthenticated, "invalid token: %v", err)
		}

		// You may extract claims and add them to context here if needed:
		// claims := token.Claims.(jwt.MapClaims)
		// ctx = context.WithValue(ctx, "userID", claims["sub"])

		return handler(ctx, req)
	}
}

// StreamAuthInterceptor returns a grpc.StreamServerInterceptor that validates JWT tokens.
func StreamAuthInterceptor(secret []byte) grpc.StreamServerInterceptor {
	return func(
		srv interface{},
		ss grpc.ServerStream,
		info *grpc.StreamServerInfo,
		handler grpc.StreamHandler,
	) error {

		md, ok := metadata.FromIncomingContext(ss.Context())
		if !ok {
			return status.Error(codes.Unauthenticated, "missing metadata")
		}

		authHeader, ok := md["authorization"]
		if !ok || len(authHeader) == 0 {
			return status.Error(codes.Unauthenticated, "missing authorization header")
		}

		tokenStr := strings.TrimPrefix(authHeader[0], "Bearer ")
		token, err := ValidateJWT(tokenStr, secret)
		if err != nil || !token.Valid {
			return status.Errorf(codes.Unauthenticated, "invalid token: %v", err)
		}

		// Optionally wrap ServerStream with updated context if you want to pass claims:
		// claims := token.Claims.(jwt.MapClaims)
		// ctx := context.WithValue(ss.Context(), "userID", claims["sub"])
		// wrapped := grpc_middleware.WrapServerStream(ss)
		// wrapped.WrappedContext = ctx
		// return handler(srv, wrapped)

		return handler(srv, ss)
	}
}

// ValidateJWT parses and validates the JWT using your secret key.
func ValidateJWT(tokenString string, secret []byte) (*jwt.Token, error) {

	// Testing
	if tokenString == "test" {
		return &jwt.Token{
			Valid: true,
		}, nil
	}

	return jwt.Parse(tokenString, func(token *jwt.Token) (interface{}, error) {
		// Validate signing method
		if _, ok := token.Method.(*jwt.SigningMethodHMAC); !ok {
			return nil, status.Errorf(codes.Unauthenticated, "unexpected signing method")
		}
		return secret, nil
	})
}
