# 🛡️ Automated Linux Security Log Analyzer & Maintenance System

A lightweight, automated Bash-based SIEM and log monitoring tool built for Linux environments. This project was developed as a hands-on cybersecurity portfolio project to master Linux system logging, automated threat detection, and log rotation/hygiene.

---

## 📌 Project Journey & Roadmap

This project was built step-by-step following a comprehensive 3-phase cybersecurity roadmap:

### **Phase 1: Foundations & Linux Command-Line Log Parsing**
* **Understanding Logs:** Explored where critical Linux logs are stored (e.g., `/var/log/auth.log`, system journals via `journalctl`).
* **Command-Line Filtering:** Mastered powerful Linux utility commands like `grep`, `tail`, `cat`, and `wc` to manually inspect authentication logs and track failed login attempts.

### **Phase 2: Pattern Matching & Script Automation**
* **Custom Bash Scripting (`security_check.sh`):** Developed an automated audit script that scans system logs, counts critical boot errors and failed authentication attempts, and generates structured reports.
* **Timestamped Archiving:** Configured the script to automatically output and save reports with unique timestamps into `/var/log/security_reports/`.
* **Color-Coded Terminal Alerts:** Integrated color codes (`GREEN` for clean status, `RED` for suspicious warnings) for real-time visibility.

### **Phase 3: Log Hygiene, Maintenance & Automation**
* **Automated Cleanup (`log_cleanup.sh`):** Built a maintenance script that safely checks the report directory and purges logs older than a specified retention period (default: 7 days) to conserve disk space.
* **Cron Job Integration:** Automated the entire workflow by scheduling cron jobs to execute system audits and cleanups continuously in the background without manual intervention.

---

## 📁 Repository Structure

```text
├── security_check.sh    # Core security auditing and log analysis script
├── log_cleanup.sh       # Automated log rotation and cleanup utility
└── README.md            # Project documentation and portfolio overview
```
### **⚙️ Installation & Usage**
  **1. Clone or Download the Scripts:**
     Ensure both security_check.sh and log_cleanup.sh are in your working directory.

  **2. Make the Scripts Executable:**
```Bash
chmod +x security_check.sh log_cleanup.sh
```
  **3. Run the Security Audit:**
```bash
sudo ./security_check.sh
```
  **4. Run the Log Cleanup Utility:**
```bash
sudo ./log_cleanup.sh
```

---

### 🚀 Automation via Cron Jobs (Optional)
To run these scripts automatically in the background, open your crontab editor:
```bash
crontab -e
```
Add the following schedules:
```bash
# Run security audit daily at midnight
0 0 * * * /path/to/security_check.sh

# Run log cleanup every Sunday at midnight
0 0 * * 0 /path/to/log_cleanup.sh
```
Built with dedication as part of an entry-level cybersecurity portfolio.

---

### 💡 Key Takeaways & Practical Learnings
* **Practical Linux System Administration:** Gained hands-on experience working with critical system logs (/var/log/auth.log, systemd-journald) and understanding how operating systems record security events.

* **Bash Scripting & Automation:** Learned how to write robust, modular Bash scripts utilizing conditional statements, loops, variables, and ANSI color-coding for clean terminal outputs.

* **File Management & Log Hygiene:** Implemented automated log rotation logic using the find command and -mtime parameters to prevent disk space exhaustion from accumulating log files.

* **Background Task Scheduling:** Mastered the configuration and management of Cron Jobs to automate routine security checks and maintenance tasks without manual intervention.

* **SOC & SIEM Fundamentals:** Developed a foundational understanding of how Security Operations Centers (SOC) automate threat detection and log archiving, mimicking a lightweight SIEM workflow.
