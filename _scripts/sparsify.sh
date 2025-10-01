#!/bin/bash
# Author: Lars Vilhuber

# Check if correct number of arguments provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 input_file output_file"
    exit 1
fi

INPUT_FILE=$1
OUTPUT_FILE=$2
TEMP_FILE=$(mktemp)
YAML_FILE=$(mktemp)

# Check if input file exists
if [ ! -f "$INPUT_FILE" ]; then
    echo "Error: Input file '$INPUT_FILE' not found."
    exit 1
fi


# Process the input file line by line
# Extract only lines starting with # (headings)
# and add empty lines between them for proper rendering
while IFS= read -r line; do
    if [[ "$line" =~ ^#+ ]]; then
        # Add the heading to the temp file
        echo "$line" >> "$TEMP_FILE"
        # Add an empty line after each heading for proper Markdown rendering
        echo "" >> "$TEMP_FILE"
    fi
done < "$INPUT_FILE"

# Filter out unwanted headings and write to output file
# Currently filtering "example" (case-insensitive)
# Additional filters can be added here in the future by extending the grep pattern
grep -v -iE "example|Acknowledgements|Hindawi" "$TEMP_FILE" > "$OUTPUT_FILE"




# Clean up temp files
rm "$TEMP_FILE" "$YAML_FILE"

echo "Sparse README created: $OUTPUT_FILE"
