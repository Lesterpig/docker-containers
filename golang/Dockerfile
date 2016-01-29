FROM golang:1.6

# Install custom CA crt
## for gitlab.insa-rennes.fr
COPY terana.crt /usr/local/share/ca-certificates/
RUN update-ca-certificates

# Install dependencies (DISABLED)

# RUN apt-get update
# RUN apt-get install -y unzip autoconf libtool

# Install linter for faster builds

RUN go get github.com/alecthomas/gometalinter
RUN gometalinter --install

# Install protobuf (DISABLED)

# RUN cd /opt && git clone --depth=1 https://github.com/google/protobuf.git
# RUN cd /opt/protobuf && ./autogen.sh && ./configure && make
# RUN cd /opt/protobuf && make install
# ENV LD_LIBRARY_PATH /usr/local/lib
# RUN go get github.com/golang/protobuf/proto github.com/golang/protobuf/protoc-gen-go
# RUN rm -rf /opt/protobuf
