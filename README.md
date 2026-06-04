# Shell Scripting Learning Repository

A comprehensive collection of bash shell scripts organized by difficulty and topic for learning shell scripting fundamentals.

## 📚 Directory Structure

```
01_Basics/
├── hello.sh                 - Simple output (echo command)
├── hello2.sh                - Output with variables
└── break_cont.sh            - Break & Continue statements in loops

02_Control_Flow/
├── while_loop.sh            - While loop with counter
├── fact_for_loop.sh         - For loop with factorial calculation
└── menu_dri_calculator.sh   - Menu-driven calculator using case statements

03_Data_Processing/
├── item_counter.sh          - Count items/occurrences in files
├── json_pretty.sh           - Format and pretty-print JSON
├── replace_string.sh        - Find and replace strings in files
└── findWord.sh              - Search for words in files

04_String_Operations/
├── Palindrome.sh            - Check if input is palindrome
├── reverse.sh               - Reverse a string or number
└── inti_acce_disp.sh        - String initialization & display

05_System_Admin/
├── monitor_memory.sh        - Show top processes by memory usage
├── port_check.sh            - Check if ports are listening
├── disk_arert.sh            - Monitor disk space and alert on threshold
├── find_large_files.sh      - Find large files in a directory
├── user_disk_report.sh      - Generate user disk usage report
└── dir_backup.sh            - Backup directories with timestamps

06_Utilities/
├── calculator.sh            - Basic arithmetic operations
├── largest_num.sh           - Find largest number from inputs
├── sum_all_num.sh           - Sum all numbers in a file
├── odd_even.sh              - Check if number is odd/even
├── timestamp_logger.sh      - Log events with timestamps
├── todo_cli.sh              - Simple TODO list manager
└── download_with_retry.sh   - Download files with retry logic

07_Advanced/
└── dd.sh                    - Data duplication & file operations

## 🚀 How to Use This Repository

### For Beginners
1. Start with **01_Basics/** - understand echo, variables, and basic syntax
2. Move to **02_Control_Flow/** - learn loops and conditionals
3. Progress through each directory in order

### For Juniors Learning Specific Topics
- **Variables & I/O**: Check 01_Basics/
- **Loops & Conditionals**: Check 02_Control_Flow/
- **String Operations**: Check 04_String_Operations/
- **File Processing**: Check 03_Data_Processing/
- **System Automation**: Check 05_System_Admin/

### Running Scripts
```bash
# Make script executable (if not already)
chmod +x script_name.sh

# Run the script
./script_name.sh

# Run with arguments (if supported)
./script_name.sh arg1 arg2
```

## 📖 Learning Path

### Week 1: Fundamentals
- [ ] 01_Basics/hello.sh
- [ ] 01_Basics/hello2.sh
- [ ] 02_Control_Flow/while_loop.sh
- [ ] 02_Control_Flow/fact_for_loop.sh

### Week 2: Logic & Operators
- [ ] 06_Utilities/calculator.sh
- [ ] 06_Utilities/odd_even.sh
- [ ] 06_Utilities/largest_num.sh
- [ ] 01_Basics/break_cont.sh

### Week 3: String Manipulation
- [ ] 04_String_Operations/Palindrome.sh
- [ ] 04_String_Operations/reverse.sh
- [ ] 03_Data_Processing/findWord.sh
- [ ] 03_Data_Processing/replace_string.sh

### Week 4: File Processing & System Admin
- [ ] 05_System_Admin/monitor_memory.sh
- [ ] 05_System_Admin/disk_arert.sh
- [ ] 05_System_Admin/dir_backup.sh
- [ ] 06_Utilities/todo_cli.sh

### Week 5: Advanced Topics
- [ ] 02_Control_Flow/menu_dri_calculator.sh
- [ ] 03_Data_Processing/json_pretty.sh
- [ ] 06_Utilities/download_with_retry.sh

## 💡 Key Concepts Covered

| Concept | Script Files |
|---------|-------------|
| **Variables & Echo** | hello.sh, hello2.sh |
| **Arithmetic** | calculator.sh, odd_even.sh |
| **If/Else** | odd_even.sh, largest_num.sh |
| **While Loops** | while_loop.sh |
| **For Loops** | fact_for_loop.sh, Palindrome.sh |
| **Break/Continue** | break_cont.sh |
| **Case Statements** | menu_dri_calculator.sh |
| **String Operations** | Palindrome.sh, reverse.sh, findWord.sh |
| **File I/O** | item_counter.sh, dir_backup.sh |
| **System Commands** | monitor_memory.sh, port_check.sh, disk_arert.sh |
| **Error Handling** | download_with_retry.sh |
| **Functions & Pipes** | Various (check individual files) |

## 🎯 Quick Reference

### Basic Syntax
```bash
#!/bin/bash                    # Shebang (must be first line)
# This is a comment
echo "Hello"                   # Print output
read variable                  # Read user input
variable=$((2 + 3))           # Arithmetic
if [ condition ]; then         # Conditional
for i in {1..5}; do           # Loop
```

### Common Operators
- **Arithmetic**: `+`, `-`, `*`, `/`, `%`
- **Comparison**: `-eq`, `-ne`, `-lt`, `-le`, `-gt`, `-ge`
- **String**: `=`, `!=`, `-z` (empty), `-n` (not empty)
- **Logical**: `&&` (AND), `||` (OR), `!` (NOT)

## 📝 File Naming Convention

- Lowercase with underscores: `file_name.sh`
- Scripts start with `#!/bin/bash`
- Executable permission: `chmod +x script.sh`

## 🔍 Debugging Tips

```bash
# Run with debug output
bash -x script.sh

# Check syntax without running
bash -n script.sh

# Print variables during execution
echo "Debug: variable=$variable"
```

## ⚡ Best Practices Demonstrated

- ✅ Always use `#!/bin/bash` header
- ✅ Quote variables: `"$variable"`
- ✅ Check if files exist before processing
- ✅ Use meaningful variable names
- ✅ Add comments explaining logic
- ✅ Validate user input
- ✅ Use functions for reusable code
- ✅ Handle errors gracefully

## 🤝 Contributing & Sharing

When sharing with juniors:
1. Start with 01_Basics/ - ensure fundamentals are clear
2. Explain one concept at a time
3. Have them run and modify scripts
4. Encourage experimentation
5. Use comments as learning aids

## 📚 Additional Resources

- `man bash` - Bash manual
- `man test` - Conditional operators
- Online: https://www.gnu.org/software/bash/manual/

---

**Version**: 1.0  
**Last Updated**: 2026-06-04  
**For**: Shell Scripting Learners & Juniors
