#!/bin/bash
# Run from the repo root
mkdir -p data

echo "Contents of s3://dsan6000-wikipedia:"
aws s3 ls s3://dsan6000-wikipedia/

echo "Contents of s3://dsan6000-wikipedia/hourly/:"
aws s3 ls s3://dsan6000-wikipedia/hourly/

echo "Copying .csv files to data/ ..."
aws s3 cp s3://dsan6000-wikipedia/hourly/ data/ --recursive --exclude "*" --include "*.csv"

echo "Downloaded .csv files:"
ls -lh data/*.csv
