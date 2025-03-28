#!/usr/bin/gawk -f

{ print $0 }

NR == line_insertion-1 {
    header = "awk 'NR>4{print}' " header_file
    while (header | getline) {
        print
    }
    close(header)
    next
}

