.PHONY: build

build:
	@docker build -t lesterpig/mongo:latest mongo
	@docker build -t lesterpig/golang:latest golang
	@docker build -t lesterpig/goqt:latest goqt
