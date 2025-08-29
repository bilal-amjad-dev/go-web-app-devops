# Use the official Go image as the base image
FROM golang:1.22-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the Go application source code into the container
COPY main.go .

# Build the Go application
# CGO_ENABLED=0 disables CGO, making the binary static and easier to run anywhere
# -o app specifies the output executable name
RUN go build -o app main.go

# Expose the port your Go application listens on
EXPOSE 8000

# Command to run the executable when the container starts

CMD ["/app/app"]

