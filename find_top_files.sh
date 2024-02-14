#!/bin/bash

output_file="top_10_files.txt"

# Find the 10 biggest files in the file system
find / -type f -exec du -h --block-size=1M {} + 2>/dev/null | sort -rh | head -n 10 >"$output_file"

echo "Top 10 biggest files in the file system have been written to $output_file."
