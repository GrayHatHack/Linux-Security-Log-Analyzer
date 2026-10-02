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
