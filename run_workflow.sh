#!/bin/bash

# Exit on error
set -e

echo "Starting workflow execution..."


# Create directory
echo "Creating templates directory if it doesn't exist..."
[[ -d templates ]] || mkdir templates

# Create temp directory
echo "Creating temp directory if it doesn't exist..."
[[ -d temp ]] || mkdir temp

# Fix webroot
echo "Fixing webroot..."
_scripts/set_webroot.sh template-README.md _README.md

# Add logo and footer
echo "Adding logo and footer (cite)..."
_scripts/add-metadata.sh template-README.md _README.md cite

# Run docker for HTML (simulate docker action)
echo "Running pandoc to generate HTML..."
docker run --rm -v "$(pwd):/data" pandoc/latex:2.9 \
  _README.md --standalone -t html5 -o templates/README.html \
  --metadata pagetitle=README --lua-filter=_scripts/links-to-html.lua

# Run docker for HTML (simulate docker action)
echo "Running pandoc to generate Word..."
docker run --rm -v "$(pwd):/data" pandoc/latex:2.9 \
  _README.md --standalone -t docx                           -o templates/README_annotated.docx --lua-filter=_scripts/links-to-html.lua

echo "Creating PDF"
/usr/bin/xvfb-run /usr/bin/wkhtmltopdf templates/README.html templates/README_annotated.pdf

# Create sparse README
echo "Creating sparse README..."
_scripts/sparsify.sh template-README.md _README_sparse.md

# Add logo and footer
echo "Adding logo and footer (based)..."
_scripts/add-metadata.sh template-README.md _README_sparse.md based


# Run docker for Word (simulate docker action)
echo "Running pandoc to generate DOCX..."
docker run --rm -v "$(pwd):/data" pandoc/latex:2.9 \
  _README_sparse.md --standalone -t docx                           -o templates/README.docx --lua-filter=_scripts/links-to-html.lua

echo "Workflow execution completed successfully!"
