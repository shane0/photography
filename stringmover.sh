#!/usr/bin/env bash

# Usage check
if [[ $# -ne 3 ]]; then
    echo "Usage: $0 <source_directory> <match_string> <output_directory>"
    exit 1
fi

# Assign arguments to variables
SRC_DIR="$1"
MATCH_STRING="$2"
OUT_DIR="$3"

# Validate source directory
if [[ ! -d "$SRC_DIR" ]]; then
    echo "Error: Source directory '$SRC_DIR' does not exist."
    exit 1
fi

# Create output directory if it doesn't exist
mkdir -p "$OUT_DIR"

# Copy files matching string or ending with .jpeg
find "$SRC_DIR" -maxdepth 1 -type f \( -name "*$MATCH_STRING*" -o -iname "*.jpeg" \) -exec cp {} "$OUT_DIR" \;

echo "Files copied to '$OUT_DIR'."

# # Prompt for source directory
# read -rp "Enter the source directory: " SRC_DIR

# # Validate source directory
# if [[ ! -d "$SRC_DIR" ]]; then
#     echo "Error: Source directory does not exist."
#     exit 1
# fi

# # Prompt for string to match
# read -rp "Enter the string to match in filenames: " MATCH_STRING

# # Prompt for output directory
# read -rp "Enter the output directory: " OUT_DIR

# # Create output directory if it doesn't exist
# mkdir -p "$OUT_DIR"

# # Find and copy matching files
# find "$SRC_DIR" -maxdepth 1 -type f \( -name "*$MATCH_STRING*" -o -iname "*.jpeg" \) -exec cp {} "$OUT_DIR" \;

# echo "Files copied to '$OUT_DIR'."
