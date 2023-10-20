#!/bin/bash

# Check if a file name is provided
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <filename.c>"
    exit 1
fi

# Remove the file extension to get the program name
filename=$(basename "$1" .c)

# Compile the C file
gcc -o "$filename" "$1" -Wall

# Check if compilation was successful
if [ $? -eq 0 ]; then
    echo "Compilation successful. Running the program:"
    ./"$filename"
else
    echo "Compilation failed."
    exit 1
fi

