FROM golang:1.5.2

# Install dependencies

RUN apt-get update
RUN apt-get install -y unzip autoconf libtool

# Install linter

RUN go get github.com/alecthomas/gometalinter
RUN gometalinter --install

# Install protobuf

RUN cd /opt && git clone --depth=1 https://github.com/google/protobuf.git
RUN cd /opt/protobuf && ./autogen.sh && ./configure && make && make check
RUN cd /opt/protobuf && make install
ENV LD_LIBRARY_PATH /usr/local/lib

RUN go get github.com/golang/protobuf/proto github.com/golang/protobuf/protoc-gen-go

# Clean-up

RUN rm -rf /opt/protobuf
