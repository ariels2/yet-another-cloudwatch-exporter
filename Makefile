.DEFAULT_GOAL := build

build-arm64:
	GOOS=linux GOARCH=arm64 go build -o yace-arm64 cmd/yace/main.go

build-amd64:
	GOOS=linux GOARCH=amd64 go build -o yace-amd64 cmd/yace/main.go

test:
	go test -v -race -count=1 ./...

lint:
	golangci-lint run -v -c .golangci.yml
