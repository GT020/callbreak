package interceptors

import (
	"context"

	"github.com/rs/zerolog/log"

	"google.golang.org/grpc"
)

func GetUnaryLoggingInterceptor() grpc.UnaryServerInterceptor {
	return func(
		ctx context.Context,
		req any,
		info *grpc.UnaryServerInfo,
		handler grpc.UnaryHandler,
	) (any, error) {
		log.Printf("GRPC Request - Method: %s, Request: %+v", info.FullMethod, req)
		resp, err := handler(ctx, req)
		if err != nil {
			log.Printf("GRPC Request - Method: %s, Error: %v", info.FullMethod, err)
		} else {
			log.Printf("GRPC Request - Method: %s, Response: %+v", info.FullMethod, resp)
		}
		return resp, err
	}
}
