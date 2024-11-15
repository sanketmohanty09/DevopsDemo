#!/bin/bash

# Specify the tag to compare with HEAD
TAG="PROD/16"
OUTPUT_DIR="Sfdx-Delta"

# Create the output directory
mkdir -p Sfdx-Delta

# Get the list of modified files between the tag and HEAD
MODIFIED_FILES=$(git diff --name-only "$TAG" HEAD)

# Check if there are any modified files
if [ -z "$MODIFIED_FILES" ]; then
  echo "No modified files found between $TAG and HEAD."
  exit 0
fi

# Copy the modified files to the output directory
echo "Copying modified files to Sfdx-Delta..."
for FILE in $MODIFIED_FILES; do
  if [ -f "$FILE" ]; then
    # Ensure the folder structure is preserved in the output directory
    mkdir -p "Sfdx-Delta/$(dirname "$FILE")"
    cp "$FILE" "Sfdx-Delta/$FILE"
  else
    echo "Skipping $FILE as this are deleted Files"
  fi
done
ls Sfdx-Delta

echo "Modified files have been copied to Sfdx-Delta."
