FROM golang:1.16-alpine
RUN apk update && apk add gcc git
WORKDIR /app
COPY go.mod .
COPY . .
RUN go build ./...
RUN go test ./...
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app .
CMD ["./app"]