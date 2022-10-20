.DEFAULT_GOAL := build

build:
	GOOS=linux GOARCH=arm64 go build -o yace-arm64 cmd/yace/main.go
	GOOS=linux GOARCH=amd64 go build -o yace-amd64 cmd/yace/main.go

build-mac:
	GOOS=darwin GOARCH=amd64 go build -o yace-mac-amd64 cmd/yace/main.go
	GOOS=darwin GOARCH=arm64 go build -o yace-mac-arm64 cmd/yace/main.go

test:
	go test -v -race -count=1 ./...

lint:
	golangci-lint run -v -c .golangci.yml
