# Use Ubuntu as the base image
FROM ubuntu:24.04

# Prevent tzdata and other interactive prompts from halting the build
ENV DEBIAN_FRONTEND=noninteractive

# Install the standard gcc (for future SIL tests) and arm-none-eabi (for STM32)
RUN apt-get update && apt-get install -y \
    build-essential \
    gcc-arm-none-eabi \
    libnewlib-arm-none-eabi \
    make \
    cmake \
    git \
    && rm -rf /var/lib/apt/lists/*

# Set default working directory
WORKDIR /workspace
