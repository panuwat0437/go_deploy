FROM golang:1.8
WORKDIR /go/src/app
COPY . .
RUN go get github.com/gin-gonic/gin
RUN go install github.com/gin-gonic/gin