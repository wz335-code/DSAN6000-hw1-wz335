#!/bin/bash

echo "filename,size,num_lines" > wikimedia_data_summary.csv

for file in data/*.csv
do
    filename=$(basename "$file")
    size=$(du -h "$file" | cut -f1)
    num_lines=$(wc -l < "$file")

    echo "$filename,$size,$num_lines" >> wikimedia_data_summary.csv
done
