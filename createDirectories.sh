#!/bin/bash

read -p "Enter directory name: " dir_name

mkdir "$dir_name" && cd "$dir_name" || {
    echo "Failed to create directory."
    exit 1
}

custom_dir="$1"
echo "Root directory name is $dir_name"

makeDir() {
    for ((i = $1; i <= $2; i++)); do
        mkdir "${custom_dir}${i}" || {
            echo "Failed to create subdirectory ${custom_dir}${i}"
            exit 1
        }
    done
}

if [ "$dir_name" ]; then
    read -p "Enter start index: " start_index
    read -p "Enter end index: " end_index

    makeDir "$start_index" "$end_index"
else
    echo "No root directory"
fi
