#!/bin/bash
# Author: Lars Vilhuber

# Check if correct number of arguments provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 input_file "
    echo "Will adjust the URL for local conversion of image"
    exit 1
fi

INPUT_FILE=$1
OUTPUT_FILE=${INPUT_FILE}

TEMP_FILE=$(mktemp)

LOGOLOC="https://raw.githubusercontent.com/social-science-data-editors/social-science-data-editors.github.io/refs/heads/master/assets/ssde-logo-tight.jpeg"
BASEURL="https://social-science-data-editors.github.io"
BASELOGO=$(basename $LOGOLOC)


# Check if input file exists
if [ ! -f "$INPUT_FILE" ]; then
    echo "Error: Input file '$INPUT_FILE' not found."
    exit 1
fi

# Download BASELOGO
if [ ! -f $BASELOGO ]; then
    wget $LOGOLOC
fi
# Replace LOGOLOC with BASELOGO in INPUT_FILE
sed -e "s|$LOGOLOC|$BASELOGO|g" $INPUT_FILE > $TEMP_FILE

# Replace INPUTFILE

mv $TEMP_FILE $OUTPUT_FILE
