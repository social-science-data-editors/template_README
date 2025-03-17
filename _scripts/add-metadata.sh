#!/bin/bash
# Author: Lars Vilhuber

# Check if correct number of arguments provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 input_file output_file type"
    echo "Will APPEND information from the input file to the output file"
    exit 1
fi

INPUT_FILE=$1
OUTPUT_FILE=${2}
TEMP_FILE=$(mktemp)
YAML_FILE=$(mktemp)
LOGOLOC="https://raw.githubusercontent.com/social-science-data-editors/social-science-data-editors.github.io/refs/heads/master/assets/ssde-logo-tight.jpeg"
BASEURL="https://social-science-data-editors.github.io"

case $type in
    "based")
        supptext="Based on"
        ;;
    "cite")
        supptext="Cite as"
        ;;
    *)
        echo "Unknown type"
        exit 1
        ;;
esac

# Check if input file exists
if [ ! -f "$INPUT_FILE" ]; then
    echo "Error: Input file '$INPUT_FILE' not found."
    exit 1
fi

# Extract YAML header from the markdown file (if it exists)
# YAML headers are enclosed between "---" lines at the beginning of the file
# We need to handle the case where the file starts with "---" and has another "---" later
sed -n '/^---$/,/^---$/p' "$INPUT_FILE" | sed '1d;$d' > "$YAML_FILE"

# For debugging - show contents of YAML file
#echo "Extracted YAML content:" >&2
#cat "$YAML_FILE" >&2

# Extract metadata values from YAML
VERSION=$(grep -i "^version" "$YAML_FILE" | sed 's/^version: *//i')
TITLE=$(grep -i "^title" "$YAML_FILE" | sed 's/^title: *//i')

# grab the DOI from the main "README.md" file, if present

if [ -f README.md ]; then
    DOI=$(head -n 20 README.md | grep -i "^doi"  | sed 's+^doi: *+, DOI: https://doi.org/+i')
else
    DOI="DOI: not available"
fi

# Get today's date in YYYY-MM-DD format
DATE=$(date +"%Y-%m-%d")

# Process contributors correctly - they might be in a list format
# First check if contributors section exists
if grep -q "^contributors:" "$YAML_FILE"; then
    # Extract all contributor lines (the main key and all list items)
    # Make sure to format properly with spaces after commas
    CONTRIBUTORS=$(sed -n '/^contributors:/,/^[a-zA-Z]/p' "$YAML_FILE" | grep '^\s*-' | sed 's/^\s*-\s*//' | tr '\n' ', ' | sed 's/,\s*$//' | sed 's/,/, /g')
else
    # Try alternative format (singular contributor)
    CONTRIBUTORS=$(grep -i "^contributor:" "$YAML_FILE" | sed 's/^contributor: *//i')
fi

# Add footnote with metadata information in HTML table format
echo "" >> "$OUTPUT_FILE"
echo "---" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"
echo "<table style=\"border: none;\">" >> "$OUTPUT_FILE"
echo "  <tr style=\"border: none;\">" >> "$OUTPUT_FILE"
echo "    <td style=\"border: none; vertical-align: middle;\">" >> "$OUTPUT_FILE"
echo "      <strong>${supptext}:</strong> $CONTRIBUTORS ($DATE), \"$TITLE\", Version ${VERSION}${DOI}." >> "$OUTPUT_FILE"
echo "    </td>" >> "$OUTPUT_FILE"
echo "    <td style=\"border: none; text-align: right;\">" >> "$OUTPUT_FILE"
echo "      <a href=\"$BASEURL\"><img src=\"$LOGOLOC\" alt=\"SSDE Logo\" style=\"height: auto; max-height: 5em; vertical-align: middle;\"></a>" >> "$OUTPUT_FILE"
echo "    </td>" >> "$OUTPUT_FILE"
echo "  </tr>" >> "$OUTPUT_FILE"
echo "</table>" >> "$OUTPUT_FILE"
echo "" >> "$OUTPUT_FILE"

