# Use Ubuntu as the base image
FROM ubuntu:24.04

# Prevent tzdata and other interactive prompts from halting the build
ENV DEBIAN_FRONTEND=noninteractive

# Install STM32 toolchain, standard gcc, and Ruby
RUN apt-get update && apt-get install -y \
    build-essential \
    gcc-arm-none-eabi \
    libnewlib-arm-none-eabi \
    make \
    cmake \
    git \
    ruby \
    ruby-dev \
    && rm -rf /var/lib/apt/lists/*

# Install the Ceedling framework
RUN gem install ceedling

# Set default working directory
WORKDIR /workspace