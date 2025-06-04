#!/bin/bash

mkdir -p data/raw
cd data/raw || exit 1

echo "[INFO] Downloading MIMIC-III dataset page..."
curl -s https://www.^^^.??.up.pt/??/MIMIC-III/ -o DB.html

echo "[INFO] Extracting .csv.gz file links..."
grep -Eo 'href="[^"]+\.csv\.gz' DB.html | sed 's/href="//' > DB_FILE_LIST.txt

echo "[INFO] Starting download loop..."
while IFS= read -r FILE; do
    echo "[INFO] Downloading: $FILE"
    curl -s -O "https://www.^^^.??.up.pt/??/MIMIC-III/${FILE}"
    
    echo "[INFO] Decompressing: $FILE"
    gunzip -f "$FILE"
done < DB_FILE_LIST.txt

echo "[INFO] Cleaning temporary files..."
rm -f DB.html DB_FILE_LIST.txt

echo "[SUCCESS] All files downloaded and extracted to data/raw/"
