[![Build Status](https://travis-ci.org/CISOfy/lynis.svg?branch=master)](https://travis-ci.org/CISOfy/lynis)

lynis
=====

Lynis - Security auditing and hardening tool, for Unix based systems

Lynis is a security auditing for UNIX derivatives like Linux, Mac OS X, BSD, and Solaris. It performs an in-depth security scan on the system itself, with the goal to detect issues and provide tips for further system hardening. It will also scan for general system information, vulnerable software packages, and possible configuration issues. Lynis is commonly used by people in the "blue team" to assess the security defenses of their systems.

We believe software should be simple, updated on a regular basis, and open. You should be able to trust, understand, and have the option to change the software. Many agree with us, as the software is being used by thousands every day to protect their systems.

Main goals:
- Automated security auditing
- Compliance testing (e.g. PCI-DSS, HIPAA)
- Vulnerability detection

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


## Installation

### Git

1. Clone or download the project files. No compilation or installation is required.
2. Execute: `./lynis audit system`

If you want to run the software as root, we suggest changing the ownership of the files. Use chown -R and chgrp -R to recursively alter the owner and group.

### Package

Stable releases of Lynis are packaged and made available as RPM or DEB file. The [CISOfy software repository](https://packages.cisofy.com) can be used to install Lynis on systems running CentOS, Debian, Fedora, OEL, openSUSE, RHEL, Ubuntu, and others.

## Documentation
Full documentation: https://cisofy.com/documentation/lynis/

## Flexibility
If you want to create your own tests, have a look at the [Lynis software development kit](https://github.com/CISOfy/lynis-sdk).

## Security
We participate in the badge program of the Linux Foundation. By clicking on the badge you will see the related details.
[![CII Best Practices](https://bestpractices.coreinfrastructure.org/projects/96/badge)](https://bestpractices.coreinfrastructure.org/projects/96)

## Enterprise version
This software is also available as part of an enterprise solution. It includes additional functionality (plugins, centralized system, reporting, dashboard), and support.

## Awards
Last years we reached multiple times the top 10 of the yearly ToolsWatch vote for security tool of the year.

[![ToolsWatch Best Tools](https://www.toolswatch.org/badges/toptools/2013.svg)](https://www.toolswatch.org/2013/12/2013-top-security-tools-as-voted-by-toolswatch-org-readers/)
[![ToolsWatch Best Tools](https://www.toolswatch.org/badges/toptools/2014.svg)](https://www.toolswatch.org/2015/01/2014-top-security-tools-as-voted-by-toolswatch-org-readers/)
[![ToolsWatch Best Tools](https://www.toolswatch.org/badges/toptools/2015.svg)](https://www.toolswatch.org/2016/02/2015-top-security-tools-as-voted-by-toolswatch-org-readers/)

## Contribute
We love contributors. Do you have something to share? Create an issue or pull request on GitHub, or send us an e-mail: lynis-dev@cisofy.com.
More details can be found at [Contributors Guide](https://github.com/CISOfy/lynis/blob/master/CONTRIBUTIONS.md).

