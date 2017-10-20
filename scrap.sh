#!/bin/sh
# Simple script to scrap meteorology data map from BMKG website

SCRIPTPATH=$(readlink -f "$0")
DIRNAME=$(dirname "$SCRIPTPATH")

wget http://cdn.bmkg.go.id/datamkg/meteorologi/images/streamline_d1.jpg -O /tmp/wind_result.jpg
temp_name=$(crc32 /tmp/wind_result.jpg)
file_name="$DIRNAME/$(date +%Y-%m-%d)_$temp_name.jpg"
mv /tmp/wind_result.jpg $file_name
