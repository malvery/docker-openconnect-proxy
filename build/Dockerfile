FROM golang:alpine as builder
RUN go install github.com/nadoo/glider@v0.16.2; update-ca-certificates
COPY entrypoint.sh /usr/bin/

FROM alpine:3.16
RUN apk add --no-cache ca-certificates openconnect
COPY --from=builder /go/bin/glider /usr/bin/entrypoint.sh /usr/bin/
ENTRYPOINT ["/usr/bin/entrypoint.sh"]
CMD ["openconnect"]
