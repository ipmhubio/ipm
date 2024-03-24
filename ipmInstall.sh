#!/bin/bash

# Detect OS and version
OS=$(lsb_release -si)
VER=$(lsb_release -sr)

# Detect architecture
ARCH=$(uname -m)

# Check if .NET 6 runtime is installed
DOTNET_INSTALLED=$(dotnet --list-runtimes | grep -c 'Microsoft.NETCore.App 6.0')

# Select the appropriate file to download
if [ "$DOTNET_INSTALLED" -eq 0 ]; then
    if [ "$ARCH" == "x86_64" ]; then
        FILE="ipm-linux-x64-full.zip"
    elif [ "$ARCH" == "arm64" ]; then
        FILE="ipm-linux-arm64-full.zip"
    elif [ "$ARCH" == "arm" ]; then
        FILE="ipm-linux-arm-full.zip"
    fi
else
    if [ "$ARCH" == "x86_64" ]; then
        FILE="ipm-linux-x64.zip"
    elif [ "$ARCH" == "arm64" ]; then
        FILE="ipm-linux-arm64.zip"
    elif [ "$ARCH" == "arm" ]; then
        FILE="ipm-linux-arm.zip"
    fi
fi

# Download and install the selected file
wget https://github.com/ipmhubio/ipm/releases/latest/download/$FILE
unzip $FILE -d /usr/local/bin