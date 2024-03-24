#!/bin/bash

# Check if the script received at least one argument
if [ "$#" -lt 1 ]; then
    echo "You must enter at least 1 command line argument"
    exit 1
fi

# Create the export directory if it doesn't exist
mkdir -p export

# Get the absolute path of the export directory
export_path=$(pwd)/export

# Clear the packages.md file
echo "" > packages.md

# Start a loop that iterates over each argument
for input_path in "$@" ; do
    # Start a nested loop that iterates over each directory in the input_path
    for dir in "$input_path"/*/ ; do
        # Remove trailing slash from directory name
        dir=${dir%/}

        # Get the folder name from the directory path
        foldername=$(basename "$dir")

        # Create a zip file with the name ipm-${foldername}.zip in the export directory
        # Run the zip command from the directory that's being zipped and specify the ipm or ipm.exe file
        (cd "$dir" && zip -r "$export_path/ipm-${foldername}.zip" ipm* )

        # Calculate its sha256 hash
        hash=$(shasum -a 256 "$export_path/ipm-${foldername}.zip" | awk '{ print $1 }')
        
        # Write the filename and hash to the markdown file
        echo -e "* ipm-${foldername}.zip\n\t * $hash" >> packages.md
    done
done