FROM golang:1.20-alpine

WORKDIR /app


RUN go mod init github.com/TheDevOpsSchool/catalogue.git

RUN go mod tidy

RUN go mod vendor

COPY . /app

RUN go build .

EXPOSE 8080

CMD ["./app"]