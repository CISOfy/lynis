lynis
=====

Lynis - Security auditing and hardening tool, for Unix based systems

Lynis is a security auditing for Unix derivatives like Linux, BSD, and Solaris. It performs an in-depth security scan
on the system to detect software and security issues. Besides information related to security, it will also scan for
general system information, installed packages, and possible configuration issues.

We believe software should be simple, updated on a regular basis and open. You should be able to trust, understand,
and even alter the software. Many agree with us, as the software is being used by thousands every day to protect
their systems.

Main goals:
- Automated security auditing
- Compliance testing
- Vulnerability management

The software aims to also assist with:
- Configuration management
- Software patch management
- Penetration testing
- Malware scanning
- Intrusion detection

License:
- GPLv3

Typical users of the software:
- System administrators
- Auditors
- Security officers
- Security professionals


## First run

1. Clone or download the project files. No compilation or installation is required.
2. Execute: `./lynis audit system`

If you want to run the software as root, we suggest altering the ownership of the files. Use chown -R and
chgrp -R to recursively alter the owner and group.

## Documentation
Full documentation: https://cisofy.com/documentation/lynis/

## Flexibility
For people who want to expand tests, it is suggested to use the tests_custom file (template in include directory).
Plugins are another possibility to customize, although their main goal is collecting data.

## Enterprise options
This software component has additional options and support available for companies. If you want to perform more
tests and centrally manage them, consider the purchase of a license.

## Support
Got an improvement to share? Create an issue in the tracker on GitHub or send us an e-mail: lynis-dev@cisofy.com

