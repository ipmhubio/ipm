#!/bin/bash

# Check if the script received two arguments
if [ "$#" -ne 1 ]; then
    echo "You must enter exactly 1 command line arguments"
    exit 1
fi
# Assign the second argument to a variable named input_path
input_path=$1

# Create the export directory if it doesn't exist
mkdir -p export

# Get the absolute path of the export directory
export_path=$(pwd)/export

# Start a loop that iterates over each directory in the input_path
for dir in "$input_path"/*/ ; do
    # Remove trailing slash from directory name
    dir=${dir%/}

    # Get the folder name from the directory path
    foldername=$(basename "$dir")

    # Create a zip file with the name ipm-${foldername}.zip in the export directory
    # Run the zip command from the parent directory of the directory that's being zipped
    (cd "$dir/.." && zip -r "$export_path/ipm-${foldername}.zip" "$foldername")

    # Calculate its sha256 hash
    hash=$(shasum -a 256 "$export_path/ipm-${foldername}.zip" | awk '{ print $1 }')
    
    # Write the filename and hash to the markdown file
    echo -e "* ipm-${foldername}.zip\n\t * $hash" >> packages.md
done