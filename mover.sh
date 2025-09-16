#!/usr/bin/env bash
# Check for required arguments
if [[ -z "$1" || -z "$2" ]]; then
    echo "Usage: $0 <input_directory> <output_directory>"
    exit 1
fi

INPUT_DIR="$1"
OUTPUT_DIR="$2"

# Create output directory if it doesn't exist
mkdir -p "$OUTPUT_DIR"

# Use find to locate .jpeg files (case-insensitive) and move them one by one
find "$INPUT_DIR" -type f \( -iname "*.jpeg" \) | while read -r file; do
    mv "$file" "$OUTPUT_DIR/"
done

echo "All .jpeg files moved from $INPUT_DIR to $OUTPUT_DIR."
