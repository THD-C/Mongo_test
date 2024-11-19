#!/bin/bash
set -e

for file in /data/*.json; do
    collection=$(basename "$file" .json)
    mongoimport --host localhost --port 27017 --db THDC --collection "$collection" --file "$file" --jsonArray
done