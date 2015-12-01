lynis
=====

** Help requested **

Want to help the project? In 1 minute you can make a big difference. Vote for the project as best security tool of 2015:

http://www.toolswatch.org/2015/11/vote-for-2015-best-security-tool/

---

Lynis - Security auditing and hardening tool, for Unix based systems

Lynis is a security auditing for Unix derivatives like Linux, BSD, and Solaris. It performs an in-depth security scan on the system to detect software and security issues. Besides information related to security, it will also scan for general system information, vulnerable software packages, and possible configuration issues.

We believe software should be simple, updated on a regular basis and open. You should be able to trust, understand, and even alter the software. Many agree with us, as the software is being used by thousands every day to protect their systems.

Main goals:
- Security auditing (automated)
- Compliance testing (e.g. PCI-DSS, HIPAA)
- Vulnerability testing

The software aims to also assist with:
- Configuration management
- Software patch management
- System hardening
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
If you want to create your own tests, use the 'tests_custom' file (template available in 'include' directory).
Plugins are another possibility to customize, although their main goal is collecting data.

## Enterprise version
This software is also available as part of an enterprise suite. It includes additional functionality (plugins, centralized system, reporting, dashboard), and supports.

## Contribute
Got an improvement? Create it as an issue in the tracker on GitHub or send us an e-mail: lynis-dev@cisofy.com
More details can be found at [Contributors Guide](https://github.com/CISOfy/lynis/blob/master/CONTRIBUTIONS.md)

