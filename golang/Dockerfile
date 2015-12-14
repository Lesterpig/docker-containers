FROM golang:1.5.2

# Install linter

RUN go get github.com/alecthomas/gometalinter
RUN gometalinter --install

# Install protobuf

RUN apt-get update && apt-get install -y protobuf-compiler
RUN go get github.com/golang/protobuf/proto github.com/golang/protobuf/protoc-gen-go

# apt-get install qtdeclarative5-dev qtbase5-private-dev qtdeclarative5-private-dev libqt5opengl5-dev qml-module-qtquick2

