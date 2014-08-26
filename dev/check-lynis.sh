#!/bin/sh

# Check for double ID numbers
grep -r Register .. | awk '{ if($2=="Register") { print $4 } }' | sort | uniq -c | awk '{ if ($1!=1) { print $2 } }'
