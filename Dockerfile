FROM golang:1.23 AS build
WORKDIR /src
COPY . .
RUN CGO_ENABLED=0 go build -trimpath -ldflags="-s -w" -o /out/node ./cmd/node
FROM gcr.io/distroless/static-debian12:nonroot
COPY --from=build /out/node /node
EXPOSE 7000 9100
ENTRYPOINT ["/node"]
