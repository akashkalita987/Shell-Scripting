#!/bin/bash
# Topic: Case...Esac Statement

echo "1. Show Date and Calendar"
echo "2. Show Active Disk Free Space"
echo "3. Show Memory Statistics"
echo -n "Enter your choice (1-3): "
read choice

case "$choice" in 
    1) 
        date && cal ;; # Runs date and calendar utilities 
    2) 
        df -h ;;      # Runs disk storage utility 
    3) 
        free -m ;;    # Runs memory statistics utility 
    *) 
        echo "Invalid selection choice!" ;; 
esac