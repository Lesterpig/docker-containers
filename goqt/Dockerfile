FROM debian:stretch

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y git wget gcc g++ libc6-dev

# Golang installation

RUN wget https://storage.googleapis.com/golang/go1.6.linux-amd64.tar.gz -O go.tar.gz
RUN tar -C /usr/local -xzf go.tar.gz && rm go.tar.gz && mkdir /go

ENV PATH /usr/local/go/bin:$PATH
ENV GOPATH /go

# Qt installation

# RUN apt-get install -y qt5-default qttools5-dev make
RUN apt-get install -y qt4-default qt4-dev-tools make

# GoQt compilation

RUN go get github.com/visualfc/goqt || true

RUN cd /go/src/github.com/visualfc/goqt/qtdrv && \
    qmake "CONFIG+=release" && \
    make

RUN cd /go/src/github.com/visualfc/goqt/tools/rcc && \
    qmake "CONFIG+=release" && \
    make

RUN cd /go/src/github.com/visualfc/goqt/ui && \
    go install -v

WORKDIR /go/src
