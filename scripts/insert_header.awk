#!/usr/bin/gawk -f

NR == line_insertion {
    header = "awk 'NR>4{print}' " header_file
    while (header | getline) {
        print
    }
    printf "\n"
    close(header)
    next
}

{ print $0 }