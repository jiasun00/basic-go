FROM registry.access.redhat.com/ubi9/go-toolset:1.18.9-14 //定制需要的基础镜像

COPY go.mod ./
RUN go mod download

COPY *.go ./

RUN go build -o ./main

EXPOSE 8081

CMD [“./main”,”-p=8081”]
