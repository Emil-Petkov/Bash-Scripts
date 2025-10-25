# failed_in_log.sh

A simple Bash script for analyzing log files and detecting failed login attempts.

---

## Overview

`failed_in_log.sh` scans a given log file for all failed login events by searching for key patterns (such as "fail", "denied", "error", "unsuccessful") in combination with "login", "user", or "auth". The script prints all matching lines and displays the **total number** of detected failed login attempts.

Perfect for:
- quick log forensics,
- security reviews,
- Red Team reconnaissance,
- system administration basics.

---

## How to Use

1. **Make the script executable:**
    ```bash
    chmod +x failed_in_log.sh
    ```
2. **Run the script:**
    ```bash
    ./failed_in_log.sh
    ```
3. **When prompted, enter your log file name** (for example, `god_log.txt`, included in this repo for demonstration).

---

## Demo

### Script
<img width="2853" height="1455" alt="Screenshot from 2025-10-25 21-04-31" src="https://github.com/user-attachments/assets/5b292ca8-5dd7-427d-afcd-87026429986a" />

### Script Input
<img width="2853" height="1455" alt="Screenshot from 2025-10-25 21-10-57" src="https://github.com/user-attachments/assets/c496e43d-7116-48bd-a006-4e76ec2266ae" />

### Script Output
<img width="2853" height="1455" alt="Screenshot from 2025-10-25 21-12-28" src="https://github.com/user-attachments/assets/487ac412-c6b9-41c6-bd6b-4ad4fbf65cbc" />

---

## How it Works

- Searches each line in the log file for any of these keywords:  
  `fail`, `denied`, `error`, `unsuccessful`
- AND in the same line, at least one of:  
  `login`, `user`, `auth`
- The search is **case-insensitive**
- Prints all matches, then outputs the **total count** of failed login events

**Example of the main command:**
```bash
grep -iE '(fail|denied|error|unsuccessful)' "$LOGFILE" | grep -iE '(login|user|auth)' "$LOGFILE" | tee /dev/tty | wc -l | awk '{print "\033[1<\033[1;31m--- TOTAL FAILS: ---\033[0m [" $1 "]"}'
