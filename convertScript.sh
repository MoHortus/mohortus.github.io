#!/bin/bash

# Check if 'home.html' exists
if [ -f "home.html" ]; then
    mv "home.html" "index.html"
    echo "Renamed 'home.html' to 'index.html'"
fi

# Replace occurrences of "home.html" with "index.html" in all HTML files
for file in *.html; do
    sed -i 's/home.html/index.html/g' "$file"
done

echo "Replacement completed successfully!"
