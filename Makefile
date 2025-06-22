# --- Variables ---
PROTO_DIR := proto
PROTO_FILE := $(PROTO_DIR)/callbreak.proto

GO_OUT := server/generated
DART_OUT := client/callbreak/lib/generated
JS_OUT := gen/js

DOCKER_IMAGE := protoc-alpine-env
DOCKERFILE := Dockerfile.proto-gen

# --- Default Target ---
all: docker-build generate

# --- Docker Build ---
docker-build:
	@echo "🐳 Building Docker image with protoc and plugins using $(DOCKERFILE)..."
	docker build --network=host -f $(DOCKERFILE) -t $(DOCKER_IMAGE) .

# --- Code Generation ---
generate: gen-go gen-dart gen-js
	@echo "✅ All protobufs generated."

gen-go:
	@echo "🔧 Generating Go gRPC code..."
	docker run --rm -v $(CURDIR):/workspace -w /workspace $(DOCKER_IMAGE) \
		protoc --proto_path=$(PROTO_DIR) \
		       --go_out=$(GO_OUT) \
		       --go-grpc_out=$(GO_OUT) \
		       $(PROTO_FILE)

gen-dart:
	@echo "🔧 Generating Dart gRPC code..."
	docker run --rm -v $(CURDIR):/workspace -w /workspace $(DOCKER_IMAGE) \
		protoc --proto_path=$(PROTO_DIR) \
		       --dart_out=grpc:$(DART_OUT) \
		       $(PROTO_FILE)

gen-js:
	@echo "🔧 Generating JS + grpc-web code..."
	docker run --rm -v $(CURDIR):/workspace -w /workspace $(DOCKER_IMAGE) \
		protoc --proto_path=$(PROTO_DIR) \
		       --js_out=import_style=commonjs:$(JS_OUT) \
		       --grpc-web_out=import_style=commonjs,mode=grpcwebtext:$(JS_OUT) \
		       $(PROTO_FILE)

clean:
	rm -rf $(GEN_DIR) $(GO_OUT) $(DART_OUT)

.PHONY: all docker-build generate gen-go gen-dart gen-js clean
