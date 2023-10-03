FROM alpine AS build
WORKDIR /root/build
RUN apk add --no-cache build-base curl-dev
RUN apk add --no-cache curl-static nghttp2-static libidn2-static libunistring-static brotli-static openssl-libs-static zlib-static
COPY ./src .
RUN make clean build

FROM scratch
COPY --from=build /root/build/build /app
# UNCOMMENT IF YOU WANT TO USE SSL
# COPY --from=build /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/
ENTRYPOINT ["/app"]