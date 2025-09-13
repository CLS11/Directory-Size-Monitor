#!/bin/bash

#Directory to monitor
DIR=$HOME

#Output report
REPORT="dir_size_report.txt"

#Header
echo "Directory Size Report - $(date)" > "$REPORT"
echo "================================" >> "$REPORT"

du -h --max-depth=1 "$DIR" | sort -hr >> "$REPORT"

echo "Directory size report saved in $REPORT"
