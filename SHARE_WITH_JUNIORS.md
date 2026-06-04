# Shell Scripting Learning Repository

## 📢 How to Use This with Your Team

This repository is designed to teach shell scripting from **zero to intermediate**. It contains 27 real scripts organized by difficulty.

### ✨ What Makes This Special

- **27 Production-Ready Scripts** in 7 difficulty categories
- **1000+ Lines of Detailed Comments** explaining concepts
- **100+ Code Examples** in explanations  
- **Progressive Difficulty** from hello.sh to matrix operations
- **Hands-On Learning** - run and modify every script
- **Teaching-Friendly** - perfect for sharing with teams

## 🎯 Recommended Usage for Teams

### Learning Progression
```
Week 1: 01_Basics/ + 02_Control_Flow/
Week 2: 06_Utilities/ 
Week 3: 03_Data_Processing/
Week 4: 05_System_Admin/
Week 5: 04_String_Operations/ + 07_Advanced/
```

## 📚 Folder Overview

| Folder | Scripts | Topics | Time |
|--------|---------|--------|------|
| 01_Basics | 3 | Variables, loops, control | 30 min |
| 02_Control_Flow | 3 | While/For loops, cases | 1-2 hrs |
| 03_Data_Processing | 4 | File handling, grep, awk | 1 hr |
| 04_String_Operations | 3 | Strings, arrays, reversal | 1 hr |
| 05_System_Admin | 6 | Monitoring, backups, admin | 1-2 hrs |
| 06_Utilities | 7 | Practical tools, math | 2 hrs |
| 07_Advanced | 1 | Complex algorithms | 1-2 hrs |

## 🚀 Quick Start Guide

```bash
# 1. Navigate to folder
cd Shell\ Scripting

# 2. Read the overview
cat README.md

# 3. Run your first script
bash 01_Basics/hello.sh

# 4. Read the script with explanations
cat 01_Basics/hello.sh

# 5. Try modifications in TRY THIS section
```

## 🎓 Each Script Contains

✅ Purpose statement and learning objectives
✅ Usage instructions with examples
✅ Expected output to verify correctness
✅ Inline comments explaining the code
✅ Detailed concept explanations
✅ Multiple code examples
✅ Common pitfalls and how to avoid them
✅ "TRY THIS" challenges for practice

## 📋 Script List by Category

### 01_Basics
- hello.sh - Your first script
- hello2.sh - Using variables
- break_cont.sh - Loop control statements

### 02_Control_Flow  
- while_loop.sh - While loops with counters
- fact_for_loop.sh - For loops and factorial calculation
- menu_dri_calculator.sh - Case statements for menus

### 03_Data_Processing
- findWord.sh - Text search with grep
- item_counter.sh - File statistics with wc
- json_pretty.sh - JSON formatting
- replace_string.sh - Find and replace operations

### 04_String_Operations
- Palindrome.sh - String reversal and checking
- reverse.sh - Number reversal algorithm
- inti_acce_disp.sh - Array initialization and display

### 05_System_Admin
- monitor_memory.sh - Process monitoring
- port_check.sh - Network port checking
- disk_arert.sh - Disk space monitoring
- find_large_files.sh - Large file discovery
- user_disk_report.sh - Disk usage reporting
- dir_backup.sh - Directory backup creation

### 06_Utilities
- calculator.sh - Arithmetic operations
- largest_num.sh - Number comparison
- sum_all_num.sh - Digit sum algorithm
- odd_even.sh - Number classification
- timestamp_logger.sh - Logging with timestamps
- todo_cli.sh - Simple task manager
- download_with_retry.sh - Resilient downloads

### 07_Advanced
- dd.sh - Matrix operations

## 💡 Teaching Strategy

**For Instructors:**
1. Start with README.md overview
2. Have juniors follow the folder sequence
3. Emphasize reading ALL comments
4. Run scripts together first
5. Then have them modify ("TRY THIS")
6. Answer questions by pointing to comment sections

**For Self-Learners:**
1. Read README.md and this file
2. Progress through folders in numerical order
3. Spend 15-30 minutes per script
4. Modify and test each "TRY THIS" challenge
5. Create your own variations

## 🎯 Learning Outcomes

After completing all scripts, you'll understand:

✅ Shell script syntax and structure
✅ Variables and data types
✅ Loops (for, while, until)
✅ Conditional logic (if/else, case)
✅ Functions and command substitution
✅ Arrays and string operations
✅ File processing and text manipulation
✅ System commands and processes
✅ Command pipelines and redirection
✅ Error handling and validation
✅ Real-world script development

## 🔧 Running Scripts

```bash
# Navigate to folder
cd 01_Basics/

# Run the script (using bash)
bash hello.sh

# Or make executable first
chmod +x hello.sh
./hello.sh

# Run with debug output
bash -x hello.sh

# Check syntax only
bash -n hello.sh
```

## 📚 Documentation Included

- **README.md** - Complete learning guide with theory
- **QUICK_START.md** - Quick reference guide
- **ORGANIZATION_GUIDE.txt** - Detailed organization info
- **SHARE_WITH_JUNIORS.md** - This file

## ⏱️ Time Breakdown

- Each script: 15-30 minutes (including modifications)
- Per folder: 30 minutes to 2 hours
- Complete repository: 15-20 hours
- Best approach: 1-2 scripts per day

## 🎓 Success Checklist

Junior has learned well when they can:

- [ ] Run and understand any script
- [ ] Modify scripts to solve new problems
- [ ] Write a script from scratch
- [ ] Combine multiple concepts
- [ ] Debug scripts using bash -x
- [ ] Explain concepts to others
- [ ] Complete all TRY THIS challenges

## ✨ Key Features

| Feature | Benefit |
|---------|---------|
| Organized by difficulty | Clear learning path |
| Heavily commented | Learn from code itself |
| Hands-on examples | Practice immediately |
| Real-world scripts | Practical skills |
| Progressive complexity | Build confidence |
| Multiple explanations | Multiple learning styles |
| Challenge exercises | Test understanding |
| Copy-ready code | No setup needed |

## 🚀 Next Steps

After completing this repository:
1. Write daily utility scripts
2. Automate repetitive tasks
3. Study advanced bash features
4. Explore community scripts
5. Create your own framework
6. Learn awk/sed in depth

## 📞 Quick Troubleshooting

**"Permission denied"**
```bash
chmod +x script.sh
./script.sh
```

**"Command not found"**
```bash
# Make sure you're in the right directory
pwd
cd 01_Basics/
bash hello.sh
```

**Script not working**
```bash
# Check for syntax errors
bash -n script.sh
# Run with debug output
bash -x script.sh
```

## 💼 Real-World Applications

These scripts teach practical skills for:
- System Administration
- DevOps and Automation
- Data Processing
- Tool Development
- Job Scheduling
- System Monitoring
- Backup and Recovery

## ✅ Before Sharing

- [ ] Copy entire folder
- [ ] Verify all 27 scripts present
- [ ] Check README.md exists
- [ ] Test first script runs
- [ ] Confirm file permissions correct
- [ ] Share all documentation

## 📊 Repository Stats

- **Scripts**: 27
- **Total lines**: 2000+
- **Comments**: 1000+
- **Examples**: 100+
- **Exercises**: 70+
- **Hours**: 15-20 to complete
- **Difficulty**: Beginner to Intermediate

## 🎉 Getting Started Now

```bash
cd Shell\ Scripting
cat README.md
bash 01_Basics/hello.sh
```

---

**Version**: 1.0  
**Date**: 2026-06-04  
**Total Scripts**: 27  
**Ready to Share**: YES ✅

**Happy Learning!** 🚀
