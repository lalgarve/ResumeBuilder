#!/usr/bin/gawk -f
# ResumeBuilder - Script
# Copyright 2025 Leila Otto Algarve
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.

NR == line_insertion {
	save_line = $0
    header = "awk 'NR>4{print}' " header_file
    while (header | getline) {
        print
    }
    close(header)
    $0 = save_line
}

{ print $0 }