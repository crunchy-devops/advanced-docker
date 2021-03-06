FROM golang:1.11-stretch

ADD hello.go hello.go
RUN go build hello.go

EXPOSE 8080
ENTRYPOINT ["./hello"]