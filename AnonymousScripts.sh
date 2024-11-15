#!/bin/bash

# Define the directory containing Apex script files
DIR="Sfdx-Delta/scripts/apex/pre"


# Check if the directory exists
if [ ! -d "$DIR" ]; then
    echo "Error: Directory $DIR not found!"
    exit 1
fi

# Loop through all `.apex` files in the directory
for filename in "Sfdx-Delta/scripts/apex/pre"/*.apex; do
    if [ -f "$filename" ]; then
        echo "Executing $filename ..."
        
        # Run the Apex script
        sf apex run --file "$filename" 
        
        # Check if the command succeeded
        if [ $? -ne 0 ]; then
            echo "Error: Failed to execute $filename"
            exit 1
        fi
    else
        echo "Skipping $filename as it is not a regular file."
    fi
done

echo "All Apex scripts in $DIR have been executed successfully."
