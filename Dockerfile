# Build stage
FROM golang:1.24-alpine AS builder
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN go build -o myapp

# Final image
FROM alpine:3.21
WORKDIR /app
COPY --from=builder /app/myapp .
COPY kodata ./kodata
EXPOSE 8080
CMD ["./myapp"]
