package main

import (
	"callbreak/generated/callbreak/v1/callbreakpb"
	"callbreak/internal/api"
	"callbreak/internal/config"
	"callbreak/internal/db"
	"callbreak/internal/game_manager"
	"callbreak/internal/interceptors"
	"fmt"
	"log"
	"net"

	"google.golang.org/grpc"
)

func main() {

	config, err := config.LoadConfig()

	if err != nil {
		log.Fatalf("Failed to load config: %v", err)
	}

	DB, err := db.ConnectDB(&config.DB)

	if err != nil {
		log.Fatalf("Failed to connect to database: %v", err)
	}

	err = db.InitMigrations(DB)

	if err != nil {
		panic(err)
	}

	lis, err := net.Listen("tcp", fmt.Sprintf(":%v", config.GRPC.Port))
	if err != nil {
		log.Fatalf("Failed to listen: %v", err)
	}

	grpcServer := grpc.NewServer(
		grpc.ChainUnaryInterceptor(
			interceptors.GetUnaryLoggingInterceptor(),
			interceptors.UnaryAuthInterceptor([]byte("secret")),
		),
	)

	gameManager := game_manager.NewGameManager()
	api := api.NewServer(gameManager)

	callbreakpb.RegisterCallbreakServiceServer(grpcServer, api)

	log.Println("gRPC server started on :50051")
	if err := grpcServer.Serve(lis); err != nil {
		log.Fatalf("Failed to serve: %v", err)
	}
}
