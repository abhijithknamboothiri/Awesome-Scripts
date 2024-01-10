#!/bin/bash

output_file="alive_subdomains.txt"  # Define the name of the output file

while read subdomain; do
    if ping -c 1 "$subdomain" &> /dev/null; then
        echo "$subdomain is alive"
        echo "$subdomain" >> "$output_file"  # Append the alive subdomain to the output file
    fi
done < {{subdomains_file}}
