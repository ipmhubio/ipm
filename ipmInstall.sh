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
    PACKAGE=$1 # The package to check
    INSTALL_CMD=$2 # The command to install the package
    IS_LIB=$3 # true if the package is a library, false otherwise

    if [ "$IS_LIB" = true ] ; then
        if ! ldconfig -p | grep $PACKAGE &> /dev/null; then
            echo "$PACKAGE could not be found"
            echo "Installing $PACKAGE..."
            install_package $INSTALL_CMD
        else
            echo "$PACKAGE is already installed"
        fi
    else
        if ! command -v $PACKAGE &> /dev/null; then
            echo "$PACKAGE could not be found"
            echo "Installing $PACKAGE..."
            install_package $INSTALL_CMD
        else
            echo "$PACKAGE is already installed"
        fi
    fi
}

install_package() {
    INSTALL_CMD=$1

    # Check for sudo
    if command -v sudo &> /dev/null; then
        sudo apt-get update
        sudo apt-get install $INSTALL_CMD
    else
        echo "Sudo command is not available, attempting to install without sudo..."
        apt-get update
        apt-get install $INSTALL_CMD
    fi
}


# Check and install unzip
check_and_install unzip unzip false



# Select the appropriate file to download
if [ "$DOTNET_INSTALLED" -eq 0 ]; then
    if [ "$ARCH" == "x86_64" ]; then
        FILE="ipm-linux-x64-full.zip"
        # Check and install libicu
        check_and_install libicu libicu-dev true
    elif [ "$ARCH" == "arm64" ] || [ "$ARCH" == "aarch64" ]; then
        FILE="ipm-linux-arm64-full.zip"
        # Check and install libicu
        check_and_install libicu libicu-dev true
    elif [ "$ARCH" == "arm" ]; then
        FILE="ipm-linux-arm-full.zip"
        # Check and install libicu
        check_and_install libicu libicu-dev true

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
unzip -o $FILE -d /usr/local/bin 
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