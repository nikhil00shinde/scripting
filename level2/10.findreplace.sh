#!/usr/bin/env bash

# Define string
SEARCH_STRING="old_string"
REPLACE_STRING="new_string"
FILES_DIR="/path/to/files/directory"


# Perform find and replace using sed
find "$FILES_DIR" -type f -exec sed -i "s/$SEARCH_STRING/$REPLACE_STRING/g" {} +

echo "Find and replace complete!"


