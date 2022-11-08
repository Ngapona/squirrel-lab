FROM microsoft/windowsservercore
# Create Windows user in the container
RUN net user /add patrick
# Set it for subsequent commands
USER patrick

FROM alpine:latest

RUN apk add bash
ADD dummy.txt .
