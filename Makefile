export GOSUMDB := off
export GOFLAGS := -v -mod=vendor
GOLANGCI_VERSION := v1.32.2

default: build

build:
	go build ./...

ensure_deps:
	go mod tidy
	go mod vendor
	cd tools  && go mod tidy
	cd tools && go mod vendor

install_devtools_mac:
	brew install golangci-lint

lint:
	golangci-lint run ./...

lint_fix:
	golangci-lint run --fix ./...

test:
	go test -v -race -cover ./...
