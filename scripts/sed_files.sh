#!/bin/bash
# ResumeBuilder - Script
# Copyright 2025 Leila Otto Algarve
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License. 


if [ $# -ne 3 ]; then
    echo "Error: Incorrect number of argunments"
    echo "Usage: $0 <diretory> <filename> <sed_program>"
    exit 1
fi

directory="$1"
filename="$2"
sed_program="$3"

if [ ! -d "$directory" ]; then
    echo "Error: Directory '$directory' doesn't exist or it is not a directory"
    exit 1
fi

tmpfile=$(mktemp) || { echo "Error: It was not possible to create the temporary file"; exit 1; }

while IFS= read -r -d '' file; do
    if [ ! -w "$file" ]; then
        echo "Warning: No permission to edit '$file', skipping..."
        continue
    fi
    if ! sed "$sed_program" "$file" > "$tmpfile"; then
        echo "Error: Unable to excute sed for '$file'"
        continue
    fi
    if ! mv "$tmpfile" "$file"; then
        echo "Error: Failure to move temporary file to '$file'"
        continue
    fi

    echo "File '$file' was successfully processed"
done < <(find "$directory" -name "$filename" -type f -print0)

[ -f "$tmpfile" ] && rm "$tmpfile"

echo "End"
