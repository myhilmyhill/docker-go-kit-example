FROM golang:1.13.4-alpine3.10 AS builder
WORKDIR /go/src/kit
RUN apk update && apk add git \
    && go get -x github.com/go-kit/kit/...
COPY . .
RUN go build -o kit .

FROM alpine:latest
WORKDIR /root/
COPY --from=builder /go/src/kit/kit .
EXPOSE 8080
CMD ["./kit"]
