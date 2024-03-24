#!/bin/bash

# Detect OS and version
OS=$(lsb_release -si)
VER=$(lsb_release -sr)

# Detect architecture
ARCH=$(uname -m)

# Check if .NET 6 runtime is installed
set +e

DOTNET_INSTALLED=$(dotnet --list-runtimes 2>/dev/null | grep -c 'Microsoft.NETCore.App 6.0')
if [ $? -ne 0 ] || [ -z "$DOTNET_INSTALLED" ]; then
    DOTNET_INSTALLED=0
fi
set -e
if ! command -v unzip &> /dev/null
then
    echo "unzip could not be found"
    echo "Installing unzip..."
    sudo apt-get update
    sudo apt-get install unzip
fi

# Select the appropriate file to download
if [ "$DOTNET_INSTALLED" -eq 0 ]; then
    if [ "$ARCH" == "x86_64" ]; then
        FILE="ipm-linux-x64-full.zip"
    elif [ "$ARCH" == "arm64" ] || [ "$ARCH" == "aarch64" ]; then
        FILE="ipm-linux-arm64-full.zip"
    elif [ "$ARCH" == "arm" ]; then
        FILE="ipm-linux-arm-full.zip"
    fi
else
    if [ "$ARCH" == "x86_64" ]; then
        FILE="ipm-linux-x64.zip"
    elif [ "$ARCH" == "arm64" ] || [ "$ARCH" == "aarch64" ]; then
        FILE="ipm-linux-arm64.zip"
    elif [ "$ARCH" == "arm" ]; then
        FILE="ipm-linux-arm.zip"
    fi
fi

echo "ARCH: $ARCH"
echo "DOTNET_INSTALLED: $DOTNET_INSTALLED"

# Check if FILE variable is set
if [ -z "$FILE" ]
then
    echo "No file to download. Exiting..."
    exit 1
fi

# Download and install the selected file
wget https://github.com/ipmhubio/ipm/releases/latest/download/$FILE
unzip $FILE -d /usr/local/bin
chmod +x /usr/local/bin/ipm