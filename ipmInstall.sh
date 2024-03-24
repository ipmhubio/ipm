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

# Function to check if a package is installed and install it if not
check_and_install() {
    PACKAGE=$1
    INSTALL_CMD=$2

    if ! command -v $PACKAGE &> /dev/null; then
        echo "$PACKAGE could not be found"
        echo "Installing $PACKAGE..."

        # Check for sudo
        if command -v sudo &> /dev/null; then
            sudo apt-get update
            sudo apt-get install -yy $INSTALL_CMD
        else
            echo "Sudo command is not available, attempting to install without sudo..."
            apt-get update
            apt-get install -yy $INSTALL_CMD
        fi
    else
        echo "$PACKAGE is already installed"
    fi
}
# Check and install unzip
check_and_install unzip unzip

# Check and install libicu
check_and_install libicu libicu-dev


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

#CLEANUP
rm $FILE

# Check if the installation was successful
if ! command -v ipm &> /dev/null
then
    echo "ipm could not be found installation failed"
    echo "Please check our other installation methods at https://ipmhub.io"
    exit 1
else
    echo "ipm was installed successfully"
    ipm --version
    exit 0
fi