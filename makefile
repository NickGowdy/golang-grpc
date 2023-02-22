build:
	go build -o bin/golang-grpc

run:
	./bin/golang-grpc

proto:
	protoc --go_out=. --go_opt=paths=source_relative \
	--go-grpc_out=. --go-grpc_opts=paths=source_relative \
	proto/service.proto

.PHONY: proto