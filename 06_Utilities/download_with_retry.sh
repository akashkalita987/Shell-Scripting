#!/bin/bash
# Download a URL with retries using curl
# Usage: ./download_with_retry.sh URL [dest-file] [retries]

URL="$1"
OUT="${2:-$(basename "$URL") }"
RETRIES="${3:-3}"

if [ -z "$URL" ]; then
  echo "Usage: $0 URL [dest-file] [retries]"
  exit 1
fi

count=0
until [ $count -ge $RETRIES ]
do
  curl -fLo "$OUT" "$URL" && break
  count=$((count+1))
  echo "Retry $count/$RETRIES..."
  sleep 1
done

if [ $count -ge $RETRIES ]; then
  echo "Failed to download $URL after $RETRIES attempts"
  exit 2
fi

echo "Downloaded to $OUT"