default: build

build:
	go build ./...

install_devtools_mac:
	brew install golangci-lint

lint:
	golangci-lint run ./...

lint_fix:
	golangci-lint run --fix ./...

test:
	go test -v -race -cover ./... -run 1
