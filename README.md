Bunu README.md içine koyabilirsin.

Project: SSH Log Parser for SOC Analysis

This script analyzes SSH authentication logs and extracts useful security insights for SOC analysts.

It focuses on detecting brute force login attempts by parsing Linux authentication logs.

Typical log source:
/var/log/auth.log
Features

The script extracts:

Total failed login attempts

Unique attacker IP addresses

Top attacking IPs

Most targeted usernames

Attack timeline (hour distribution)

chmod +x ssh_log_analyzer.sh
./ssh_log_analyzer.sh /var/log/auth.log

====================================
      SOC SSH Attack Analysis
====================================

[+] Total Failed Login Attempts
352

[+] Unique Attacker IP Count
18

[+] Top Attacking IPs
120 185.220.101.45
80 45.33.12.55
40 103.12.55.7

[+] Top Targeted Users
200 root
90 admin
30 ubuntu

[+] Attack Timeline (Hour Distribution)
120 03
90 02
60 01
40 04

====================================
Analysis Completed
