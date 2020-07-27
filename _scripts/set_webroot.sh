#!/bin/bash
WEBROOT=https://social-science-data-editors.github.io/template_README/
sed 's@\](\([a-gi-zA-Z]\)@]('"$WEBROOT"'\1@g' $1 > $2
