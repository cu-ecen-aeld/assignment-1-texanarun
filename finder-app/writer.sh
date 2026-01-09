#!/bin/sh

# Check that both arguments are provided
if [ $# -ne 2 ] 
then
    echo "Error: In correct arguments provided."
    exit 1
fi

WRITEPATH="$1"
WRITESTR="$2"

# Extract directory path from writepath
WRITEDIR="$(dirname "$WRITEPATH")"
echo "Writer Path $WRITEPATH"
echo "Writer Dir $WRITEDIR"

# Make sure directory exists
if ! mkdir -p "$WRITEDIR"; then
    echo "Error: Could not create directory $WRITEDIR"
    exit 1
fi

# Write string to file
if ! echo "$WRITESTR" > "$WRITEPATH"; then
    echo "Error: Could not write to file $WRITEPATH"
    exit 1
fi

exit 0

