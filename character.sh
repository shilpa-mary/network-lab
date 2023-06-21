#! /bin/bash

echo "Enter the filename to convert:"
read filename
if [ ! -f $filename ]; then
  echo "File not found."
  exit 1
fi
tr '[:upper:]' '[:lower:]' < $filename > lowercase.txt
lines=$(wc -l < lowercase.txt)
words=$(wc -w < lowercase.txt)
characters=$(wc -c < lowercase.txt)
echo "Number of lines: $lines"
echo "Number of words: $words"
echo "Number of characters: $characters"
sort -r lowercase.txt
rm lowercase.txt
