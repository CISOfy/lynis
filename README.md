
[![Build Status](https://travis-ci.org/CISOfy/lynis.svg?branch=master)](https://travis-ci.org/CISOfy/lynis)
[![CII Best Practices](https://bestpractices.coreinfrastructure.org/projects/96/badge)](https://bestpractices.coreinfrastructure.org/projects/96)
[Documentation]

[Documentation]: https://cisofy.com/documentation/lynis/

# lynis

> Lynis - Security auditing and hardening tool, for UNIX-based systems.

Lynis is a security auditing for UNIX derivatives like Linux, macOS, BSD, and others. It performs an **in-depth security scan** and runs on the system itself. The primary goal is to test security defenses and **provide tips for further system hardening**. It will also scan for general system information, vulnerable software packages, and possible configuration issues. Lynis was commonly used by people in the "blue team" to assess the security defenses of their systems. Nowadays, penetration testers also have Lynis in their toolkit.

We believe software should be **simple**, **updated on a regular basis**, and **open**. You should be able to trust, understand, and have the option to change the software. Many agree with us, as the software is being used by thousands every day to protect their systems.

## Goals

The main goals are:
- Automated security auditing
- Compliance testing (e.g. ISO27001, PCI-DSS, HIPAA)
- Vulnerability detection

The software (also) assists with:
- Configuration management
- Software patch management
- System hardening
- Penetration testing
- Intrusion detection

### Audience

Typical users of the software:
- System administrators
- Auditors
- Security officers
- Security professionals

## Installation

### Git

1. Clone or download the project files (**no compilation nor installation** is required) ;

        git clone https://github.com/CISOfy/lynis

2. Execute:

        ./lynis audit system

If you want to run the software as `root`, we suggest changing the ownership of the files. Use `chown -R 0:0` to recursively alter the owner and group and set it to user ID `0` (`root`).

### Package

Stable releases of Lynis are packaged and made available as RPM or DEB package. The [CISOfy software repository](https://packages.cisofy.com) can be used to install Lynis on systems running :
`CentOS`, `Debian`, `Fedora`, `OEL`, `openSUSE`, `RHEL`, `Ubuntu`, and others.

### Enterprise version

This software component is also part of an enterprise solution. Same quality, yet with more functionality.

Focus areas include compliance (`PCI DSS`, `HIPAA`, `ISO27001`, and others). The Enterprise version comes with:
* a web interface and features a dashboard ;
* hardening snippets ;
* and an improvement plan.

## Documentation
Full documentation: https://cisofy.com/documentation/lynis/.

## Customization
If you want to create your own tests, have a look at the [Lynis software development kit](https://github.com/CISOfy/lynis-sdk).

## Security
We participate in the [CII best practices](https://bestpractices.coreinfrastructure.org/projects/96) badge program of the Linux Foundation.

## Media and Awards
Lynis is collecting some awards and we are proud of that.

* 2016
  * [Best of Open Source Software Awards 2016](http://www.infoworld.com/article/3121251/open-source-tools/bossie-awards-2016-the-best-open-source-networking-and-security-software.html#slide13).
  * Article by TechRepublic, considering Lynis a "must-have" tool: [How to quickly audit a Linux system from the command line](http://www.techrepublic.com/article/how-to-quickly-audit-a-linux-system-from-the-command-line/)

* 2015
  * [![ToolsWatch Best Tools (second place)](https://www.toolswatch.org/badges/toptools/2015.svg)](https://www.toolswatch.org/2016/02/2015-top-security-tools-as-voted-by-toolswatch-org-readers/)
  * [Best of Open Source Software Awards 2015](http://www.idgenterprise.com/news/press-release/infoworld-announces-the-2015-best-of-open-source-software-awards/).

* 2014
  * [![ToolsWatch Best Tools (third place)](https://www.toolswatch.org/badges/toptools/2014.svg)](https://www.toolswatch.org/2015/01/2014-top-security-tools-as-voted-by-toolswatch-org-readers/)

* 2013
  * [![ToolsWatch Best Tools (sixth place)](https://www.toolswatch.org/badges/toptools/2013.svg)](https://www.toolswatch.org/2013/12/2013-top-security-tools-as-voted-by-toolswatch-org-readers/)

## Contribute

> We love contributors.

Do you have something to share? Or help out with translating Lynis into your own language? Create an issue or pull request on GitHub, or send us an e-mail: lynis-dev@cisofy.com.

More details can be found in the [Contributors Guide](https://github.com/CISOfy/lynis/blob/master/CONTRIBUTIONS.md).

You can also simply contribute to the project by _starring_ the project and show your appreciation that way.

Thanks!

### License

> GPLv3
