#!/usr/bin/env bash

URL=$1

COUNTER=0
RETRIES=30
while [ $COUNTER -le $RETRIES ]; do
    let COUNTER=COUNTER+1
    if [ "`curl -Is "$URL" | head -n 1 | egrep "200 OK"`" != "" ]; then
        break
    fi
    echo -ne '.'
    sleep 1
done

echo

if [ $COUNTER -ge $RETRIES ]; then
    echo "(X) Starting error"
    exit 1
fi
