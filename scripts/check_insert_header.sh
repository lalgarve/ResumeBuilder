#!/bin/bash
# ResumeBuilder - Script
# Copyright 2025 Leila Otto Algarve
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.

# Script to add license header to a file or list of files from pipe

# Função para processar um único arquivo
process_file() {
    local target_file="$1"
    local header_file="$RESUME_BUILDER_SCRIPTS/headers/license_header.$(echo "$target_file" | sed -E 's/.*\.(.*)/\1/')"

    # Verifica se o arquivo de cabeçalho existe
    if [ ! -f "$header_file" ]; then
        echo "Error: Header file $header_file not found for $target_file"
        return 1
    fi

    # Extract information of the 
    local pattern=$(awk 'NR==4{printf $1; exit}' "$header_file")
    local number_lines_check=$(awk 'NR==3{printf $1; exit}' "$header_file")
    local number_line_match=$(head -n "$number_lines_check" "$target_file" | grep -c "$pattern")
    if [[ "$number_line_match" -eq 0 ]]; then
        local line_insertion=$(awk 'NR==2{printf $1; exit}' "$header_file")
        insert_header.awk -v line_insertion="$line_insertion" -v header_file="$header_file" "$target_file" > temp.sh && mv temp.sh "$target_file"
        echo "Header successfully inserted in $target_file!"
    else
        echo "File $target_file already has the license header"
    fi
}

# Verifica se RESUME_BUILDER_SCRIPTS está definida
if [ -z "$RESUME_BUILDER_SCRIPTS" ]; then
    echo "Error: RESUME_BUILDER_SCRIPTS variable is not set"
    exit 1
fi

# Se não houver argumentos e entrada padrão for um pipe, lê da pipe
if [ -z "$1" ] && [ ! -t 0 ]; then
    while IFS= read -r file || [ -n "$file" ]; do
        if [ -f "$file" ]; then
            process_file "$file"
        else
            echo "Error: File '$file' does not exist"
        fi
    done
# Caso contrário, processa os argumentos da linha de comando
elif [ -n "$1" ]; then
    for file in "$@"; do
        if [ -f "$file" ]; then
            process_file "$file"
        else
            echo "Error: File '$file' does not exist"
        fi
    done
else
    echo "Error: No files provided"
    echo "Usage: $0 <file1> [file2 ...] or cat file_list | $0"
    exit 1
fi
