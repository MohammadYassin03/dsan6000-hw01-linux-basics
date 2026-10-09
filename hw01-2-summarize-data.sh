#!/bin/bash
# Run from the repo root
out=wikimedia_data_summary.csv
echo "filename,size,num_lines" > "$out"

for f in data/*.csv; do
  name=$(basename "$f")
  size=$(ls -lh "$f" | awk '{print $5}')
  lines=$(wc -l < "$f")
  echo "$name,$size,$lines" >> "$out"
done
