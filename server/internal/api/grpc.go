package api

import (
	"callbreak/generated/callbreak/v1/callbreakpb"
	"context"

	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

type Server struct{}

func (s *Server) Register(context.Context, *callbreakpb.RegisterRequest) (*callbreakpb.AuthResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Register not implemented")
}
func (s *Server) Login(context.Context, *callbreakpb.LoginRequest) (*callbreakpb.AuthResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Login not implemented")
}
func (s *Server) CreateGame(context.Context, *callbreakpb.CreateGameRequest) (*callbreakpb.GameResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method CreateGame not implemented")
}
func (s *Server) GameStream(grpc.BidiStreamingServer[callbreakpb.GameEvent, callbreakpb.ServerEvent]) error {
	return status.Errorf(codes.Unimplemented, "method GameStream not implemented")
}
