#!/bin/bash

# Check if the script received at least one argument
if [ "$#" -lt 1 ]; then
    echo "You must enter at least 1 command line argument"
    exit 1
fi

# Start a loop that iterates over each argument (each folder)
for input_folder in "$@" ; do
    # Check if the argument is a directory
    if [ -d "$input_folder" ]; then
        # Loop over each file in the directory
        for input_file in "$input_folder"/* ; do
            # Get the base name of the file
            base_name=$(basename "$input_file")

            # Check if the file name contains a version number
            if [[ "$base_name" =~ -cli-([0-9]+\.[0-9]+\.[0-9]+)- ]]; then
                # Extract the version number
                version=${BASH_REMATCH[1]}
                # Remove the -cli-<version>- part from the file name
                new_name=$(echo "$base_name" | sed -E 's/-cli-[0-9]+\.[0-9]+\.[0-9]+-//')
                # Create the ipm-releases/{version} directory if it doesn't exist
                mkdir -p "ipm-releases/$version"
                # Copy and rename the file to the ipm-releases/{version} directory
                cp "$input_file" "ipm-releases/$version/$new_name"
                # Create the releasenotes.md file with the specified content
                echo "## $version ($(date +%m/%d/%Y))" > "ipm-releases/$version/releasenotes.md"
                echo "" >> "ipm-releases/$version/releasenotes.md"
                echo "#### IPM $version Release Notes" >> "ipm-releases/$version/releasenotes.md"
                echo "**New features**:" >> "ipm-releases/$version/releasenotes.md"
                echo "**Enhancements**:" >> "ipm-releases/$version/releasenotes.md"
                echo "**Bug fixes**:" >> "ipm-releases/$version/releasenotes.md"
                echo "----" >> "ipm-releases/$version/releasenotes.md"
            else
                # If no version number is found, keep the original name
                new_name="$base_name"
                # Create the ipm-releases/unknown directory if it doesn't exist
                mkdir -p "ipm-releases/unknown"
                # Copy and rename the file to the ipm-releases/unknown directory
                cp "$input_file" "ipm-releases/unknown/$new_name"
            fi
        done
    else
        echo "$input_folder is not a directory"
    fi
done
# Append the file hash for each file except for the sha256 files
for file in "ipm-releases/$version"/* ; do
    if [[ "$(basename "$file")" != *.sha256 && "$(basename "$file")" != *.md ]]; then
        file_hash=$(sha256sum "$file" | awk '{ print $1 }')
        echo "* $(basename "$file")" >> "ipm-releases/$version/releasenotes.md"
        echo "    * $file_hash" >> "ipm-releases/$version/releasenotes.md"
    fi
done
echo "Files have been copied and renamed successfully."