#!/bin/bash

if [ "$#" -lt 1 ]; then
    echo "Usage: $0 command [arguments]"
    exit 1
fi

CMD="$@"

COUNT=0
while stdbuf -o0 $CMD; do
    ((COUNT++))
    echo -e "Command has been executed successfully $COUNT times\n"
done

# Output when command fails
echo "Command failed on attempt #$COUNT"
