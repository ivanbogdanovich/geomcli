.PHONY: run build test tidy fmt

APP=geomcli
CMD=./cmd/geomcli

run:
	go run $(CMD) $(ARGS)

build:
	mkdir -p bin
	go build -o bin/$(APP) $(CMD)

test:
	go test ./...

tidy:
	go mod tidy

fmt:
	go fmt ./...
