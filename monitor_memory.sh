#!/bin/bash
# Show top N processes by RSS memory (default 10)
# Usage: ./monitor_memory.sh [N]

N="${1:-10}"
ps aux --sort=-rss | awk 'NR==1{print;next} NR<=ENVIRON["N"]+1{print}' N="$N" | head -n $((N+1))
