package api

import (
	"callbreak/generated/callbreak/v1/callbreakpb"
	"callbreak/internal/game_manager"
	"context"
	"io"

	"github.com/rs/xid"
	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
)

type Server struct {
	callbreakpb.UnimplementedCallbreakServiceServer
	manager *game_manager.GameManager
}

func NewServer(manager *game_manager.GameManager) *Server {
	return &Server{
		manager: manager,
	}
}

func (s *Server) Register(context.Context, *callbreakpb.RegisterRequest) (*callbreakpb.AuthResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Register not implemented")
}
func (s *Server) Login(context.Context, *callbreakpb.LoginRequest) (*callbreakpb.AuthResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method Login not implemented")
}

func (s *Server) CreateGame(context.Context, *callbreakpb.CreateGameRequest) (*callbreakpb.GameResponse, error) {

	id := s.manager.CreateGame()

	response := &callbreakpb.GameResponse{
		Message: id,
	}

	return response, nil
}
func (s *Server) GameStream(stream grpc.BidiStreamingServer[callbreakpb.GameEvent, callbreakpb.ServerEvent]) error {

	for {
		req, err := stream.Recv()
		if err == io.EOF {
			return nil // Client closed stream
		}
		if err != nil {
			return err
		}

		resp := &callbreakpb.ServerEvent{
			Payload: req.GameId,
		}
		if err := stream.Send(resp); err != nil {
			return err
		}
	}

}

func (s *Server) SendEvent(ctx context.Context, event *callbreakpb.GameEvent) (*callbreakpb.Ack, error) {

	res := callbreakpb.Ack{
		Message: "a",
	}

	return &res, nil
}
func (s *Server) ReceiveEvents(req *callbreakpb.SubscribeRequest, stream grpc.ServerStreamingServer[callbreakpb.ServerEvent]) error {

	for {
		resp := &callbreakpb.ServerEvent{
			Payload: xid.New().String(),
		}
		if err := stream.Send(resp); err != nil {
			return err
		}
	}

}
