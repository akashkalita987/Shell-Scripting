#!/bin/bash
################################################################################
# SCRIPT: monitor_memory.sh
# PURPOSE: Show top N processes by memory usage
# DIFFICULTY: Intermediate
#
# LEARNING OBJECTIVES:
#   - Learn ps (process status) command
#   - Understand awk for data processing
#   - Learn command-line arguments ($1, $2, etc.)
#   - Practice system monitoring
#
# USAGE: ./monitor_memory.sh [N]
#        N = number of top processes to show (default: 10)
#
# EXAMPLES:
#   ./monitor_memory.sh           # Show top 10
#   ./monitor_memory.sh 5         # Show top 5
#   ./monitor_memory.sh 20        # Show top 20
#
# OUTPUT COLUMNS:
#   USER : User running the process
#   PID  : Process ID
#   %CPU : CPU percentage
#   %MEM : Memory percentage
#   VSZ  : Virtual memory size
#   RSS  : Resident set size (actual memory)
#   COMM : Command name
################################################################################

# Get N from argument, default to 10 if not provided
N="${1:-10}"

# ps aux: List all processes with detailed info
# --sort=-rss: Sort by RSS (memory) in descending order (-rss = highest first)
# awk: Process and filter the output
#   NR==1: First line (header) - print as is
#   NR<=ENVIRON["N"]+1: Print first N+1 lines (header + N processes)
# head -n $((N+1)): Ensure we get exactly N+1 lines
ps aux --sort=-rss | awk 'NR==1{print;next} NR<=ENVIRON["N"]+1{print}' N="$N" | head -n $((N+1))

################################################################################
# COMMAND-LINE ARGUMENTS:
#
# $0 : Script name
# $1 : First argument
# $2 : Second argument
# $# : Number of arguments
# $@ : All arguments as array
# $* : All arguments as string
#
# Default values using parameter expansion:
# ${variable:-default}  # Use default if variable is empty
# ${variable:=default}  # Use and assign default if empty
# ${variable:?error}    # Show error if empty
#
# Example:
#   N="${1:-10}"        # Use $1 if provided, else 10
#   NAME="${1:?Name required}"  # Error if no argument
#
# CHECK IF ARGUMENT PROVIDED:
#   if [ -z "$1" ]; then
#       echo "Usage: $0 [argument]"
#   fi
#
# PARSE MULTIPLE ARGUMENTS:
#   for arg in "$@"; do
#       echo "$arg"
#   done
#
# SHIFT ARGUMENTS:
#   shift    # Remove first argument, $2 becomes $1
#   shift 2  # Remove first two arguments
#
# PS COMMAND:
#
# Syntax: ps [options]
#
# Common options:
#   a : All processes (not just current user)
#   u : User-oriented format (show user info)
#   x : All processes including those without terminals
#   e : Show environment variables
#   f : Full-format listing
#   -o : Specify output columns
#
# Common usage:
#   ps aux        # Most detailed (shows everything)
#   ps -ef        # Alternative format
#   ps -u username # Processes of specific user
#   ps -p PID     # Single process
#   ps aux --sort=-pid  # Sorted by PID descending
#   ps aux --sort=-%mem # Sorted by memory %
#   ps aux --sort=-%cpu # Sorted by CPU %
#
# OUTPUT COLUMNS:
#   USER  : User running the process
#   PID   : Process ID
#   %CPU  : CPU usage percentage
#   %MEM  : Memory usage percentage
#   VSZ   : Virtual memory size (KB)
#   RSS   : Resident set size - actual memory (KB)
#   TTY   : Terminal type
#   STAT  : Process state (S=sleep, R=running, Z=zombie)
#   START : Process start time
#   TIME  : CPU time used
#   COMMAND : Command/program name
#
# SORTING:
#   --sort=field   : Sort by field ascending
#   --sort=-field  : Sort by field descending (minus sign)
#
#   Examples:
#   --sort=%mem    # Sort by memory % ascending
#   --sort=-%mem   # Sort by memory % descending (highest first)
#   --sort=%cpu    # Sort by CPU % ascending
#   --sort=-%cpu   # Sort by CPU % descending
#
# AWK FOR DATA PROCESSING:
#
# Syntax: awk 'pattern {action}' file
#
# Special variables:
#   NR  : Number of Records (line number)
#   NF  : Number of Fields (column count)
#   $0  : Entire line
#   $1  : First field
#   $2  : Second field
#   NF  : Last field ($NF gets last)
#   ENVIRON : Access environment variables
#
# Pattern types:
#   BEGIN   : Before processing any lines
#   END     : After processing all lines
#   /regex/ : Lines matching regex
#   NR==1   : First line
#   NR>5    : Lines after 5
#
# Example patterns:
#   awk 'NR==1 {print}'              # Print first line
#   awk 'NR>2 && NR<5 {print}'       # Print lines 3-4
#   awk '{print NR, $0}'              # Print with line numbers
#   awk '{print $1, $3}'              # Print columns 1 and 3
#   awk '{sum+=$2} END {print sum}'   # Sum column 2
#
# COMMAND CHAINING:
#
#   command1 | command2 | command3
#
#   Example:
#   ps aux | grep ssh              # Find ssh processes
#   ps aux | awk '{print $1}' | sort -u  # Get unique users
#   ps aux | head -5               # Show first 5 lines
#
# FILTERING OUTPUT:
#
#   # Show only specific columns
#   ps aux | awk '{print $1, $11}'  # User and command
#
#   # Show specific processes
#   ps aux | grep apache
#   ps aux | grep -v grep           # Grep without grep process
#
#   # Limit to N lines
#   ps aux | head -N
#
# PRACTICAL EXAMPLES:
#
#   # Find process using most memory
#   ps aux --sort=-%mem | head -2
#
#   # Kill top CPU process
#   kill $(ps aux --sort=-%cpu | awk 'NR==2 {print $2}')
#
#   # Count processes per user
#   ps aux | awk '{print $1}' | sort | uniq -c
#
#   # Show memory in MB
#   ps aux | awk '{print $1, $6/1024 " MB", $11}'
#
#   # Find zombie processes
#   ps aux | grep Z | awk '{print $2}'
#
# MEMORY UNITS:
#   VSZ/RSS are in KB (kilobytes)
#   To convert to MB: divide by 1024
#   To convert to GB: divide by 1024^2
#
#   Example:
#   echo "scale=2; $rss_kb/1024" | bc  # Convert to MB
################################################################################

# TRY THIS:
# 1. Show top 5 instead of 10: ./monitor_memory.sh 5
# 2. Show in MB instead of KB: modify awk to divide by 1024
# 3. Filter specific user: ps aux | grep "^username"
# 4. Show only CPU hogs: --sort=-%cpu
# 5. Kill a process automatically if exceeds threshold
# 6. Create a monitoring loop that checks every 5 seconds
# 7. Export results to CSV file
# 8. Set up alerts for high memory usage
