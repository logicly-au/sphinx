FROM alpine:3

COPY README.md .

RUN cat README.md && exit 1

