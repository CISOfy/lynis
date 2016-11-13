Lynis Changelog
===============

Lynis 2.4.1 (not released yet, under development)

Changes:
* Generic code improvements
* Improved the update check and display
* Finish and Portuguese translation


---------------------------------------------------------------------------------

Lynis 2.4.0 (2016-10-27)

Exactly one month after previous release, the Lynis project is proud to announce
a new release. This release had the specific focus to improve support for macOS
users. Thanks to testers and contributors to make this possible.

New:
----
* New group "system integrity" added
* Support for clamconf utility
* Chinese translation (language=cn)
* New command "upload-only" to upload just the data instead of a full audit
* Enhanced support for macOS, including HostID2 generation for macOS
* Support for CoreOS
* Detection for pkg binary (FreeBSD)
* New command: lynis show hostids (show host ID)
* New command: lynis show environment (hardware, VM, or container type)
* New command: lynis show os (show operating system details)

Changes:
--------
* Several new sysctl values have been added to the default profile
* Existing tests have been enhanced to support macOS

Tests:
------
* AUTH-9234 - Support for macOS user gathering
* BOOT-5139 - Support for machine roles in LILO test
* BOOT-5202 - Improve uptime detection for macOS and others
* FIRE-4518 - Improve pf detection and mark as root-only test
* FIRE-4530 - Don't show error on screen for missing IPFW sysctl key
* FIRE-4534 - Check Little Snitch on macOS
* INSE-8050 - Test for insecure services on macOS
* MACF-6208 - Allow non-privileged execution and filter permission issues
* MALW-3280 - Detection for Avast and Bitdefender daemon on macOS
* NETW-3004 - Support for macOS
* PKGS-7381 - Improve test for pkg audit on FreeBSD
* TIME-3104 - Chrony support extended

Plugins (community and commercial):
-----------------------------------
* PLGN-1430 - Gather installed software packages for macOS
* PLGN-4602 - Support for Clam definition check on macOS

---------------------------------------------------------------------------------

Lynis 2.3.4 (2016-09-27)

Changes:
--------
* Skip update message when using the 'show' helper
* Instead of opening the log file, you can now use 'lynis show details' followed
  by the test ID. It will show the relevant section.
* Several tests have extended log details
* Many style improvements as part of ongoing refactoring of the code
* Detection of nftables improved
* Replaced cut, sed, tr and others commands with binary variable (for forensics
  and future intrusion checking capabilities)
* Swedish translation provided by Peter Carlsson
* Support for arch-audit to scan for presence of vulnerable packages on Arch Linux
* OS detection improved

Tests:
------
* CONT-8107 - New test checking number of Docker containers
* CRYP-7902 - Gather more details regarding certificates
* DBS-1816  - Define skip reason
* FILE-6344 - Adjusted /proc test for hidepid option
* FILE-6362 - Removed warning and add skip reason
* FIRE-4520 - Change test to use detected binary
* FIRE-4520 - New test to check for empty nftables ruleset
* KRNL-5820 - Corrected function and style improvements
* LOGG-2146 - Textual change
* NAME-4408 - Check localhost to IP mapping
* PKGS-7320 - Test for arch-audit tool
* PKGS-7322 - Check vulnerable packages on Arch Linux
* PKGS-7381 - Extended vulnerable package detection for FreeBSD
* TIME-3104 - timedatectl test now detects NTP synchronization properly


---------------------------------------------------------------------------------

Lynis 2.3.3 (2016-08-23)


Upgrade note
------------
Customized profiles that included sysctl settings need to be altered. See
default.prf for the correct format of the lines.


Additions
---------
* OpenStack detection
* Option to disable automatic refresh of software repository


Languages
---------
* Japanese translation added, contributed by Yukio Takahara


Fixes
-----
* Some tests did not show a warning text
* Typo in man page for tests-from-group


Parameters
----------
* New --bin-dirs to define binary directories to scan
* New option --root-dir to specify a different file system to scan


Nginx
-----
* Rewrite of configuration parsing


PHP
---
* Support for PHP 5.6


Redis
-----
* Redis test to detect configuration files
* Test Redis configuration for several best practices
* Perform permission check on Redis configuration files


Experimental features (in development)
--------------------------------------
* --bin-dirs - set what directories should be scanned for binaries
* --root-dir - define the root of the file system, to allow forensics


Settings
--------
* Many settings have a new alias (with dashes instead underscores)
* New setting 'show-report-solution' to show solution in report


Functions
---------
* ExitFatal can now exit program with optional text
* IsNotebook can detect if system is a notebook (or not)
* ShowSymlinkPath and FileIsReadable test for at least one argument
* StoreNginxSettings will save parsed nginx configuration


Tests
-----
* BOOT-5108 - Support for Syslinux bootloader
* DBS-1882  - Redis configuration detection
* DBS-1884  - Redis 'requirepass' check
* DBS-1886  - Redis 'rename-command CONFIG' check
* DBS-1888  - Redis 'bind localhost' check
* FILE-6374 - Improved logging
* KRNL-5830 - Improved logging for detected Linux kernels
* KRNL-6000 - Support for multiple profiles and new format style
* LOGG-2190 - Ignore MySQL files in /tmp from early MySQL 5.x releases
* LOGG-2192 - New test to check opened log files that are empty

Lynis Enterprise integration
----------------------------
* Tag 'redis-server' is added for systems running Redis


---------------------------------------------------------------------------------

Lynis 2.3.2 (2016-08-09)


Categories and Groups
---------------------
Tests are now grouped by their focus area and named 'groups' accordingly.
Besides groups, each test will belong to a category (performance, privacy, or
security).

Commands: lynis show categories, lynis show groups
Options: --tests-from-category, --tests-from-group

Note: You might need to change your scripts if you previously defined the group
of tests to scan.


Development

-----------
A new 'strict' option is available in the profiles and by default enabled for
the initialization phases of Lynis. It will perform a strict code check for the
tests, to detect any uninitialized variables, improving code quality.


Helpers
-------
With 'lynis update check' you can now check for updates. This is the preferred
new method.

The command 'lynis show changelog' allows reviewing the changes. Optionally a
release can be specified as additional argument.


Languages
---------
Initial translation for German has been contributed by Kai Raven. The Italian
translation by Stefano Marty (stefanomarty). Hungarian translation by Zoltan
Paldi (paldiz)


Profiles
--------
Parsing of the profiles has been improved, which prevented some settings from
overriding default settings.

Tests
------
* AUTH-9212 - Added prerequisite to log
* AUTH-9216 - Simplified test and make it more efficient
* AUTH-9218 - Clean ups and improve readability
* AUTH-9226 - Style, text, and removed warning
* AUTH-9228 - Provide just a suggestion instead of warning
* AUTH-9268 - Improve test for readability
* AUTH-9328 - Test /etc/profile.d for umask setting
* AUTH-9406 - Readability and code style changes
* CONT-8102 - Determine if all Docker tests should be performed
* DBS-1880  - Initial support for Redis server
* HTTP-6720 - Readability improvement of test
* KRNL-5830 - Readability and style improvements, ignore rescue images
* MAIL-8818 - Style and refactoring
* PHP-2211  - Readability improvement and code style changes
* PHP-2374  - Changed text and cleanups
* PHP-2376  - Log result to log file instead of report
* PKGS-7383 - Simplified test
* PKGS-7388 - Style and readability improvements
* TIME-3106 - Corrected string to test for status
* TOOL-5102 - Split of fail2ban tests
* TOOL-5104 - Test for enabled fail2ban jails


Languages
---------
Translation of Spanish (es) added
Proper display of text strings when accented characters are used
More text strings added


General
-------
* Added bold and header as new colors
* Changed header and footer of screen output
* Allow atomic tests to be skipped (e.g. SSH-7408)
* Extended tests database with category (lynis show tests)
* By default Lynis will now run in 'quick mode' and not break after each
section. You can get this behavior by adding the --wait option.


Functions
---------
* RemoveColors - New test to clear colors
* DisplayError - Display error on screen in uniform format and colors
                 Use an optional exit code to quit the program
* SkipAtomicTest - This function is now properly working with lowercase strings


Website
-------
Several controls on the website are added or updated, including:
* FILE-6344
* FINT-4315
* FINT-4402
* HTTP-6714
* MACF-6234
* NAME-4018
* NAME-4402
* PHP-2374
* PROC-3612
* TIME-3106

---------------------------------------------------------------------------------


Lynis 2.3.1 (2016-07-14)
-----------------------------------------------

This is a minor patch to improve upon findings in version 2.3.0.

Changes:
- Convert all skipped tests to uppercase
- Only add license key when it is defined
- Updated French translation
- Exclude custom.prf from tarball (download via website)


--------------------------------------------------------------


Lynis 2.3.0 (2016-07-13)
-----------------------------------------------

We are excited to announce this major release of auditing tool Lynis. Several big
changes have been made to core functions of Lynis. These changes are the next of
simplification improvements we made. There is a risk of breaking your existing
configuration. See the tips below to upgrade.

This release will soon also be available in our software repository. For more
details see https://packages.cisofy.com to install and upgrade Lynis.


Upgrade tips
============

Default profile and custom profiles:
Settings of multiple profiles can now be merged. Instead of making changes to
default.prf, copy your changes to custom.prf. Use 'lynis show profiles' to show
any detected profiles. Only include your changes in custom.prf, to keep the
configuration clean and tidy. They will then overwrite the defaults. Use
'lynis show settings' to see if they are applied.

Check your cron jobs:
When using --quiet, the output will be really quiet now. Use --show-warnings-only
if you still want to see the warnings. Lynis will now exit with error 0, even
when warnings have been found. Use option error-on-warnings=yes (custom.prf) to
exit with code 78 when it has any warnings.


Details
=======

Ansible
-------
New Ansible examples for deployment: https://github.com/CISOfy/lynis-ansible


Databases
---------
Lynis will check also for DB2 instances and report the status.


Developer Mode
--------------
With this release the developer mode is introduced. It can be activated with the
--developer option, or developer-mode=yes in profile. In development mode, some
details are displayed on screen, to help testing of existing or new tests.

To get easy access, a new profile has been added (developer.prf).

Examples:
lynis audit system --profile developer.prf
lynis audit system --developer

A new software development kit (SDK) for Lynis is available on GitHub. This will
help contributors and developers to test software quality, including linting and
running unit tests. The devkit also supports building DEB and RPM files for easy
deployment. The repository can be found on https://github.com/CISOfy/lynis-sdk


Documentation
-------------
Template files have been updated to provide better examples on how to create
custom tests and plugins.

To simplify the usage of Lynis, a new helper utility has been added: show.
This helper will show help, or values (e.g. version, plugin directories, etc).
Some examples include: lynis show options, lynis show commands, lynis show
version, etc. See lynis show for all available details.


File Systems
------------
The XFS file system detection has been added. Mount points /dev/shm and /var/tmp
are now checked for their options. Comparison of the mount options has been
improved. A new test has been added to check if /var/tmp has been bound to /tmp.


Language Support
----------------
Lynis now supports language translations, with the language profile option.
Initial languages: Dutch (nl), English (en), French (fr).

You can help by translating the language files in the db directory.


Mac OS X Improvements
---------------------
Package manager Brew has been added


nginx
-----
Show suggestion when weak protocol is used, like SSLv2 or SSLv3. The protocols
are now also parsed and stored as details in the report file.


Packages
--------
Systems running CentOS, Debian, openSUSE, RHEL, Ubuntu and others, may now use
our own software repository: https://packages.cisofy.com

Performance
-----------
Several performance improvements have been implemented. This includes rewriting
tests to invoke less commands and enhanced hardware detection at the beginning.


Plugins
-------
You can set the plugin directory now also via a profile. First match wins.
Priority: 1) argument, 2) profile, 3) default

--plugindir is now an alias for --plugin-dir


Profiles
--------
Lynis now support multiple profiles. By using a file 'custom.prf', it allows to
inherit values first from default.prf, then merge it with custom.prf.

Several tests have been altered to support multiple profiles.

New profile options:
  quick=yes|no (similar to --quick)
  developer (see Developer section)
  check-value


Remote scanning
---------------
Although Lynis is a aimed on running on local hosts, there is still an ongoing
demand for running remote scans. With 'lynis audit system remote' tips are now
provides to perform such a scan via SSH.


Software
--------
Zypper calls are now marked with a non-interactive flag to prevent it waiting for
any interactive input.


Solaris
-------
Improve execution for Solaris systems.


SSH
---
The configuration of SSH is now parsed from the SSH daemon directly. This enables
handling with new defaults more easily, as OpenSSH sometimes introduces new keys,
or change their default value between versions.


Systemd
-------
Added support for detecting systemd and reporting it as a service manager. The
systemd plugin has been released as a community plugin.


Uploads
-------
Solved a bug which added the proxy configuration twice.

Profile options: upload-tool and upload-tool-arguments


General Improvements
--------------------
The screen output has been improved, to show more meaningful things when some
parameters are missing. Several old variables and lines have been cleaned up.

The Display function now allows the --debug flag. This helps in showing some
lines on screen, which would normally be hidden (e.g. items not found or
matched).

Logging has been improved in different areas, like cleaning up and add more
relevant messages where needed.

The interface colors have been changed, to make it more obvious how the software
can be used. Also the wait line between categories have been altered, to properly
display on systems with a white background.

When no auditor name has been specified, it will say that instead of unknown.

Functions file has been cleaned up, including adding developer debug information
when old functions are still be used. Later on these functions will be deleted,
and therefore placed at the bottom.


Program Options
---------------
* --developer           - Enable developer mode
* --verbose             - Show more details on screen, reduce in normal mode
* --show-warnings-only  - Only show warnings on screen
* --skip-plugins        - Disable running any plugins (alias: --no-plugins)
* --quiet               - Changed: become really quiet
* --config              - Removed: use 'lynis show profiles' instead


Functions
---------
* AddSetting            - New function to store settings (lynis show settings)
* ContainsString        - New function to search for a string in another one
* Display               - Added --debug, showing details on screen in debug mode
                        - Reset identation for lines which are too long
* DisplayToolTip        - New function to display tooltips
* IsDebug               - Check for usage of --debug
* IsDeveloperMode       - Status for development and debugging (--developer)
* IsDeveloperVersion    - Check if release is still under development
* IsRunning             - Added return state
* IsVerbose             - Check for usage of --verbose
* IsOwnedByRoot         - Check ownership of files and directories
* IsWorldWritable       - Improved test with additional details
* PortIsListening       - Check if a service it listening to a specified port
* SkipAtomicTest        - Allow smaller tests to be skipped (e.g. SSH-7408)


Tests
-----
* AUTH-9234 - Test for minimal UID in /etc/login.defs when available
* AUTH-9254 - Allow allow root to use this test, due to permissions
* AUTH-9262 - Restructure of test, support for pwquality PAM
* AUTH-9288 - Only check for accounts which have a maximum password age set
* AUTH-9308 - Check for systemd targets
* BANN-7119 - /etc/motd test disabled
* BANN-7122 - /motd content test disabled
* BOOT-5122 - Extended GRUB password check
* BOOT-5184 - Improve file permissions check for CentOS 7 machines
* DBS-1860  - Check for status of DB2
* CRYP-7902 - Improved logging
* FILE-6354 - Restrict searching in /tmp to mount point only
* FILE-6372 - Properly checking for /etc/fstab now, ignore comments
* FILE-6374 - Added /dev/shm and /var/tmp
* FILE-6374 - New test for /var/tmp
* FILE-6430 - New test for detecting specific filesystems
* FILE-7524 - Support for multiple profiles
* HTTP-6632 - Fix for proper detection of Apache modules
* HTTP-6642 - Test disabled
* HTTP-6710 - Trigger suggestion when weak protocols SSLv2/SSLv3 are used
* KRNL-5788 - Support for kernel with grsecurity patches (linux-image-grsec)
* KRNL-5820 - Improved logging for test
* KRNL-6000 - Allow multiple profiles to be used, store more details
* LOGG-2190 - Improvements for Fail2Ban and cron-related files
* NETW-3014 - Support for multiple profiles
* PKGS-7303 - Added Brew package manager
* PKGS-7354 - Test for DNF repoquery plugin before using it
* PKGS-7381 - Check for vuln.xml file
* PRNT-2306 - Check if files are readable before parsing them
* PROC-3612 - Removed wchan output to prevent grsecurity issues
* SCHD-7702 - Test for running cron daemon
* SCHD-7704 - Test ownership of cronjob files
* SSH-7408  - Show weak configurations of SSH on screen as a suggestion
* TOOL-5102 - Test for Fail2ban tooling
* TOOL-5190 - Test for intrusion detection or prevention system


Plugins
-------
* PLGN-1602 - Marked as root-only
* PLGN-2612 - Marked as root-only
* PLGN-2804 - Marked as root-only
* PLGN-3202 - Marked as root-only


--------------------------------------------------------------

Lynis 2.2.0 (2016-03-18)

We are proud to present this new release of Lynis. It is a major upgrade, and the
result of many months of work. This version includes new features and tests, and
many small enhancements. We encourage all to test and upgrade to this latest
release.

* Highlights
------------
The biggest change in this release is the optimization of several functions. It
allows for better detection, and dealing with the quirks, of every single
operating system. Some functions were fortified to handle unexcepted results
better, like missing a particular binary, or not returning the hostname.

This release also enables tests to be shorter, by adding new functions. Some
functions were renamed or slightly changed, to provide more value to the tooling.
Another big change in this release is a wide set of optimizations and quality
testing. Outdated pieces were removed, or rewritten, to support features seen in
newer distributions.

In the area of compliance, adjustments have been made to start supporting more
in-depth testing for this. Ideal for companies who have a particular compliance
need, or want to test and enforce the system hardening levels of their systems.

Last but not least, many small changes make this software easier to use. On
our website we added new guides to provide help and support.

We like to thank our contributors, in particular Kamil Boratyński, Steve Bosek,
and Eric Light. Their contributions helped us greatly shaping this release.


Below are the changes per category:

* Automation tools
------------------
Detection for CFEngine has been improved. Also additional logging and reporting
of automation tools.

* Authentication
----------------
Depending on the operating system, Lynis now tries to determine if failed logins
are properly logged. This includes checking for /etc/login.defs file [AUTH-9408].
Merged previous password check for Solaris into test AUTH-9228. User ids on AIX
will be gathered and added to the report [AUTH-9234].

New plugin is introduced to analyze PAM settings. It including items like:

- Two-factor authentication methods
- Minimum password length, password strength and protection status against brute
  force cracking
- Password history

Report option: auth_failed_logins_logged

* Boot
------
Added detection for Mac OSX boot loader. Initial support to test UEFI settings,
including Secure Boot option. Options boot_uefi_booted and
boot_uefi_booted_secure added to report file

* Compliance
------------
This release prepares for upcoming extensions to assist with compliance testing.
The profile has a new option, which can be used to define what standards should
be tested for, if any test is available. The related option is:
compliance_standards

Right now these standards can be selected:
- CIS benchmarks
- HIPAA
- ISO27001/ISO27002
- PCI DSS

Note that additional tests will be implemented in future releases and then tagged
to these particular standards.

* DNS and Name services
-----------------------
Support added for Unbound DNS caching tool [NAME-4034], including a configuration
check [NAME-4036].

Record if a name caching utility is being used like nscd or Unbound. Also logging
to report as field name_cache_used

* Firewalls
-----------
Test for IPFW firewall on FreeBSD has been improved: status of pflogd will no
longer be displayed, when pf is not available.

New test FIRE-4532 introduced for detection of the Mac OS X application firewall.
Also, the status of application firewalls is audited now.

FIRE-4508 is another new test, which tests chains of iptables and their default
policy (ACCEPT or DROP). This release also supports the upcoming nftables
technology with new test FIRE-4536. It is expected that it will replace iptables
later on, so this test will perform a status check. Additional FIRE-4548 will
perform a version detection of the userland utility nft and determine if there
are any rules configured.

Renamed FIRE-4511 to FIRE-4502.

* File Integrity Monitoring
---------------------------
Test added to include osqueryd as a supported tool.

* Hardware
----------
Detection of firewire is enhanced (both ohci and core detected).

* Logging
---------
Extended the test syslog-ng logging to remote systems. The log Lynis itself
produces is also enhanced, to be more detailed for several tests.

* Malware
---------
ESET and LMD (Linux Malware Detect) have been added. Discovered malware scanners
are also logged to the report.

* Mount points
--------------
FILE-6374 is expanded to test for multiple common mount points and define best
practice mount flags.

* Networking
------------
Best practices for IPv6 configuration on Linux are now collected. Also network
interface names from most operating systems.

* Operating systems
-------------------
Improved support for Debian 8 systems, and displaying Gentoo for Gentoo-based
systems. Detection of VMware release has been added. Boot loader exception is not
longer displayed when only a subset of tests is performed. FreeBSD systems can
now use service command to gather information about enabled services.

Several paths have been added to allow better detection on systems running
FreeBSD and others.

* Passwords
-----------
AUTH-9286 change has been extended to both capture minimum and password age.

* Proxy support
---------------
A proxy can now be specified in the profile, to allow uploads via a HTTP or SOCKS
proxy.

* Service Managers
------------------
SystemV init is now detected.

* Software and Packages
-----------------------
Now information will be logged when vulnerable software packages were found.
Support for DNF (Dandified YUM) for Fedora systems has been added. This is done
in several tests: PKGS-7350 (installed packages), PKGS-7352 (security notices),
PKGS-7354 (integrity tests).

* SSH
-----
Multiple configuration tests of SSH are now merged into SSH-7408. This enables
easier testing later on and reduces repetition.

* Virtual machines and Containers
---------------------------------
Detection of virtual machines has been extended in several ways. Now VMware tools
(vmtoolsd) are detected and machine state is improved with tools like Puppet
Facter, dmidecode, and lscpu. Properly detect Docker on CoreOS systems, where it
before gave error as it found directory /usr/libexec/docker. Check file
permissions for Docker files, like the socket file [CONT-8108].

* Individual tests
------------------
[AUTH-9204] Exclude NIS entries to avoid false positives
[AUTH-9230] Removed test as it was merged into AUTH-9228
[AUTH-9234] Support for AIX added
[AUTH-9288] Test for expired passwords
[AUTH-9328] Show correct message when no umask is found in /etc/profile. It also
            includes improved logging, and support for other operating systems.
[BOOT-5104] Rewrote test to detect SysV init and other service managers
[BOOT-5106] New test to test boot loader on Mac OS X
[BOOT-5180] Only gets executed if runlevel 2 is found
[CONT-8108] New test to test for Docker file permissions
[DBS-1816]  Removed suggestion
[FILE-6310] Add more details to test when a symlinked path has been found
[FILE-6410] Added /var/lib/locatedb as search path
[FINT-4338] Added osquery test
[FIRE-4508] Added chains test for iptables
[FIRE-4511] Renamed to FIRE-4502
[FIRE-4536] Support for nftables detection
[FIRE-4538] Basic configuration check for for nftables
[HOME-9310] Use POSIX compatible flags to avoid errors on BusyBox
[HTTP-6622] Determine Apache version and log to report
[HTTP-6624] Ignore wildcard and default entries as ServerName for Apache
[LOGG-2154] Additional support for log destinations for syslog-ng
[MALW-3278] New test to detect LMD (Linux Malware Detect)
[NAME-4406] Changed logic for localhost check and more detailed logging
[NETW-2600] IPv6 configuration check for Linux
[NETW-3032] Added ARP monitoring software test
[PKGS-7308] Split package name and version for RPM based package manager
[PKGS-7350] Support for installed packages via Fedora DNF package manager (Dandified YUM)
[PKGS-7352] Query security notices for DNF
[PKGS-7354] Perform integrity tests for package database (DNF)
[SHLL-6230] Test for umask values in shell configuration files (e.g. rc files)
[STRG-1842] New test for checking authorized USB devices
[TIME-3104] Show only suggestion on FreeBSD systems if ntpdate is configured
[TIME-3170] New test to check NTP configuration files

* Functions
-----------
[CreateTempFile]         Create a temporary file
[DigitsOnly]             New function to extract only numbers from a text string
[DisplayManual]          New function to show text on screen without any markup
[ExitCustom]             New function to allow program to exit with a different exit code, depending on outcome
[GetHostID]              If no MAC address is found, use SSH keys for creation of a host identifier
[IsWordWritable]         Changed return codes for easier usage of the function
[LogText]                Replaces the older logtext function
[RandomString]           Creates a random string of characters
[RemoveTempFiles]        Remove any created temporary files
[Report]                 Replaces the older report function
[ReportSuggestion]       Allows two additional parameters to store details
                         (text and external reference to a solution)
[ReportWarning]          Like ReportSuggestion() has additional parameters
[ShowComplianceFinding]  Display compliance findings
[ShowSymlinkPath]        Ensure readlink is available

* General improvements
----------------------
- When using pentest mode, it will continue without any delays (=quick mode).
- Plugins execution is improved, with improved logged and counting of active
  plugins.
- Data uploads: provide help when self-signed certificates are used.
- Improved output for tests which before showed results as a warning, instead of
  just as a suggestion.
- Lynis now uses different exit codes, depending on errors or finding warnings.
  This helps with automation and any custom scripting you want to apply.
- Preparations to allow compressing the Lynis report file and enhance uploads.
- Added --config option to show what settings file or profile is used.
- Tool tips are displayed, to make Lynis even easier to use.
- Show a warning if the release is older than four months.
- PID file has additional checks, including cleanups.


* Plugins
---------
[PAM]       New plugin available in all versions of Lynis
[PLGN-2602] Replaced mktemp commands with CreateTempFile function
[PLGN-2804] Limit report output of EXT file systems to 1 item per line

--------------------------------------------------------------

Lynis 2.1.1 (2015-07-22)

This release adds a lot of improvements, with focus on performance, and
additional support for common Linux distributions and external utilities.
We recommend to use this latest version.

* Operating system enhancements
-------------------------------
Support for systems like CentOS, openSUSE, Slackware is improved.

* Performance
-------------
Performance tuning has been applied, to speed up execution of the audit on
systems with many files. This also includes code cleanups.

* Automatic updates
-------------------
Initial work on an automatic updater has been implemented. This way Lynis
can be scheduled for automatic updating from a trusted source.

* Internal functions
--------------------
Not all systems have readlink, or the -f option of readlink. The
ShowSymlinkPath function has been extended with a Python based check, which
is often available.

* Software support
------------------
Apache module directory /usr/lib64/apache has been added, which is used on
openSUSE.

Support for Chef has been added.

Added tests for CSF's lfd utility for integrity monitoring on directories and
files. Related tests are FINT-4334 and FINT-4336.

Added support for Chrony time daemon and timesync daemon. Additionally NTP
sychronization status is checked when it is enabled.

Improved single user mode protection on the rescue.service file.

* Other
-------
Check for user permissions has been extended.
Python binary is now detected, to help with symlink detection.
Several new legal terms have been added, which are used for usage in banners.
In several files old tests have been removed, to further clean up the code.

* Bug fixes
---------
Nginx test showed error when access_log had multiple parameters.
Tests using locate won't be performed if not present.
Fix false positive match on Squid unsafe ports [SQD-3624].
The hardening index is now also inserted into the report if it is not displayed
on screen.

* Functions
---------
Added AddSystemGroup function

* New tests
---------
Several new tests have been added:
* [PKGS-7366] Scan for debsecan utility on Debian systems
* [PKGS-7410] Determine amount of installed kernel packages
* [TIME-3106] Check synchronization status of NTP on systemd based systems
* [CONT-8102] Docker daemon status and gather basic details
* [CONT-8104] Check docker info for any Docker warnings
* [CONT-8106] Check total, running and unused Docker containers

* Plugins
---------
* [PLGN-2602] Disabled by default, as it may be too slow for some machines
* [PLGN-3002] Extended with /sbin/nologin

* Documentation
---------------
A new document has been created to help with the process of upgrading Lynis.
It is available at https://cisofy.com/documentation/lynis/upgrading/

--------------------------------------------------------------


Lynis 2.1.0 (2015-04-16)

* General
---------
Screen output has been improved to provide additional information.

* OS support
------------
CUPS detection on Mac OS has been improved. AIX systems will now use csum
utility to create host ID. Group check have been altered on AIX, to include
the -n ALL. Core dump check on Linux is extended to check for actual values
as well.

* Software
----------
McAfee detection has been extended by detecting a running cma binary.
Improved detection of pf firewall on BSD and Mac OS. Security patch checking
with zypper extended.

* Session timeout
-----------------
Tests to determine shell time out setting have been extended to account for
AIX, HP-UX and other platforms. It will now determine also if variable is
exported as a readonly variable. Related compliance section PCI DSS 8.1.8
has been extended.

* Documentation
---------------
- New document: Getting started with Lynis
  https://cisofy.com/documentation/lynis/get-started/

* Plugins (Enterprise)
----------------------
- Update to file integrity plugin
  Changes to PLGN-2606 (capabilities check)

New configuration plugins:
* PLGN-4802 (SSH settings)
* PLGN-4804 (login.defs)

Download link: https://cisofy.com/download/lynis/

--------------------------------------------------------------


Lynis 2.0.0 (2015-02-25)


The first release within the 2.x branch! It includes several new features, to
simplify or improve auditing on Unix based systems, including BSD, Linux,
Mac OS and more traditional systems like AIX, HPUX and Solaris.

New features and many improvements are the reason for the bump to a major
release, also a beginning of a new era. Many tools to audit or harden systems
have being released, yet none have been maintained over a long period of time.

Lynis Support and Feedback
--------------------------
This software is supported and under development by CISOfy. By providing a
dual license, this software is kept up-to-date and enhanced. Both customers
and the community, benefit from this licensing. This release is available
thanks to your input and feedback.

Lynis Helpers
-------------
New in this release is the support for helpers. Small utilities which enhance
Lynis by providing a single goal. The first helper available is to audit
Docker build files.

Lynis Improved OS support
-------------------------
Many changes have been implemented to better support Linux, FreeBSD, NetBSD
DragonBSD and OpenBSD in particular. Upcoming releases will include smaller
"improvement rounds" for other systems as well.

Lynis New technologies
----------------------
More utilities and technologies are supported now. Technologies and tools
like systemd, Docker, nftables.

Lynis Lynis Enterprise
----------------------
As this code is shared, customers have an additional option to define to
what server they want to upload the audit results. Also, commercial plugins
have been bundled.

Lynis New parameters
--------------------
Several new options have been added:
* --dump-options (see all options)
* --report-file (define a different location for the report file)

Lynis General
-------------
Documentation on the website has been extended: https://cisofy.com/support/
The man page, Lynis binary and several tests have improved texts.

This release is exceptional in that it includes many changes. We have done
a lot of testing on different platforms. You could expect this software to be
stable. Still, an assumption is no guarantee and especially no substitution
for testing in your own environment. If you encounter issues, please report
them via one of the links above in this changelog.


Enjoy this new release!


================================================================================

Lynis 1.6.4 (2014-11-04)

New:
- Boot loader detection for AIX [BOOT-5102]
- Detection of getcap and lsvg binary
- Added filesystem_ext to report
- Detect rootsh

Changes:
- Hide errors when RPM database is faulty and show suggestion instead [PKGS-7308]
- Allow OpenBSD to gather information on listening network ports [NETW-3012]
- Don't trigger warning for Shellshock when doing segfault test [SHLL-6290]
- Do not run Apache test on OpenBSD and strip control chars [HTTP-6624]
- Extended AIDE test with configuration validation test [FIND-4314]
- Improved Shellshock test regarding non-Linux support [SHLL-6290]
- Added support for gathering volume groups on AIX [FILE-6311]
- Properly parse PAM lines and add them to report [AUTH-9264]
- Support for boot loader detection on OpenBSD [BOOT-5159]
- Added uptime detection for OpenBSD systems [BOOT-5202]
- Support for volume groups on AIX [FILE-6312]
- Redirect errors when searching for readlink binary

---------------------------------------------------------------------------------

Lynis 1.6.3 (2014-10-14)

New:
- Added tests for Shellshock bash vulnerability [SHLL-6290]
- Added test to determine if Snoopy is used [ACCT-9636]
- New test for qdaemon configuration file [PRNT-2416]
- Test for GRUB boot loader password [BOOT-5122]
- New test for qdaemon printer jobs [PRNT-2420]
- Added ClamXav test for Mac OS X [MALW-3288]
- Gentoo vulnerable packages test [PKGS-7393]
- New test for qdaemon status [PRNT-2418]
- Gentoo package listing [PKGS-7304]
- Running Lynis without root permissions will start non-privileged scan
- Systemd service and timer example file added
- Added grub2-install to binaries

Changes:
- Adjustments so insecure SSL protocols are detected in nginx config [HTTP-6710]
- Directories will be skipped when searching for nginx log files [HTTP-6720]
- Only gather unique name servers from /etc/resolv.conf [NAME-2704]
- Properly detect mod_evasive on Gentoo and others [HTTP-6640]
- Improved swap partition detection in /etc/fstab [FILE-6336]
- Improvements to kernel detection (e.g. Gentoo) [KRNL-5830]
- Test for built-in security options in YUM [PKGS-7386]
- Improved boot loader detection for GRUB2 [BOOT-5121]
- Split GRUB test into two tests [BOOT-5122]
- Added Mac OS uptime check [BOOT-5202]
- Improved GetHostID function for systems having only ip binary
- Improved testing for symlinked binary directories
- Minor adjustments to log output
- Renamed dev directory to extras

---------------------------------------------------------------------------------

Lynis 1.6.2 (2014-09-22)

 New:
 - IsVirtualMachine function to check if system is running in VM

   VM types: Bochs CPU emulation, IBM z/VM, KVM, Linux Containers,
             libvirt LXC driver (Linux Containers), Microsoft Virtual PC, OpenVZ,
             Oracle VM VirtualBox, QEMU, Systemd Namespace container,
             User-Mode Linux (UML), VMware products, XEN

 - Detection for SaltStack configuration management tooling
 - ShowSymlinkPath function to check path behind a symlink
 - Check of configuration options of pacman [PKGS-7314]
 - Support for drill binary to check for Lynis update
 - FileIsEmpty function to check for empty files
 - Detect updates for Arch Linux [PKGS-7312]
 - Add detection for machine ID (systemd)
 - Added linux_config_file to report
 - Bash completion script for Lynis
 - Added detection of ss binary

 Changes:
 - Extended system reboot check, to enable it for most Linux  versions[KRNL-5830]
 - Improved inetd test to avoid false positive with xinetd process [INSE-8002]
 - Permissions check has been adjusted to allow packaging and pentest mode
 - Added detection for compressed Linux config file [KRNL-5728]
 - Added support for compressed Linux config file [KRNL-5730]
 - Store PID file in home directory of the user, if needed
 - Added usage of ss to gather listening ports [NETW-3012]
 - Additional permission added to CUPS check [PRNT-2307]
 - Extended telnet in inetd test [INSE-8016]
 - Fix for reading at.deny file [SCHD-7720]
 - Removed individual warnings [BOOT-5184]
 - Several improvements for Arch Linux

---------------------------------------------------------------------------------

Lynis 1.6.1 (2014-09-09)

 New:
 - Added --pentest parameter to run a non-privileged scans (e.g. for pentesting)
 - Show skipped tests in report if they require root and scan is non-privileged

 Changes:
 - Improved vulnerable packages test on Debian based systems (apt-check) [PKGS-7392]
 - Don't show warnings for 'swap' in 4th column fstab file [FILE-6336]
 - Remove warning for old files in /tmp [FILE-6354]
 - CheckUpdates function will have better output when no connection is available
 - Changes to parameters and functions, to allow penetration tests with Lynis
 - Test for actual files in /etc/modprobe.d before grepping in it
 - Improved chown command when file permissions are incorrect
 - Changed output of update test, show when status is unknown
 - No scanning of symlinked directories (binaries test)
 - Extended SafePerms function to also check for UID
 - Several tests will have root-only bit set now
 - Improved netstat tests on Arch Linux

---------------------------------------------------------------------------------

Lynis 1.6.0 (2014-08-27)

 New:
 - Added several new plugins to default profile
 - HostID detection for AIX

 Changes:
 - Improvements for log file
 - GetHostID function improved
 - Improved detection of security repository for Debian based systems [PKGS-7388]
 - Set default values for update check, to avoid error message on screen
 - Cleanup for mail section, adding IMAP and POP3 protocols

---------------------------------------------------------------------------------

Lynis 1.5.9 (2014-07-31)

 New:
 - New NetBSD test for vulnerable software packages [PKGS-7380]
 - Test if Debian based systems need a reboot [KRNL-5830]
 - Test for running Sendmail daemon [MAIL-8880]
 - Test for availability of mtree [FINT-4330]
 - Check for lp daemon (printing) [PRNT-2314]
 - Added Qmail status detection [MAIL-8860]
 - New NetBSD boot loader test [BOOT-5126]
 - Added test for automation tools like Cfengine and Puppet [TOOL-5002]
 - Added KRNL-5830 control to website
 - Added detection for Puppet
 - Added tooling category

 Changes:
 - Security repository test extended with /etc/apt/sources.list.d [PKGS-7388]
 - Added exception case for CUPS configuration (listen statement) [PRNT-2308]
 - Improved detection of TMOUT setting in shell profile file [SHLL-6220]
 - Perform promiscuous interfaces test for NetBSD as well [NETW-3014]
 - Perform swap partition parameters test on all systems [FILE-6336]
 - Also check password file on DragonFlyBSD and NetBSD [AUTH-9208]
 - Show message regarding toor user for all systems [AUTH-9204]
 - Check for available interfaces on NetBSD as well [NETW-3004]
 - Extended UFS file system test with FFS support [FILE-6329]
 - Improvements for step-tickers file test [TIME-3160]
 - Perform sockstat test for NetBSD [NETW-3012]
 - Gather IP addresses for NetBSD [NETW-3008]
 - Test MAC addresses on NetBSD [NETW-3006]
 - Added /usr/X11R7/bin directory to search for binaries
 - Improved full qualified domain name (FQDN) check for Linux
 - Don't show follow-up hints when there are no warnings or suggestions
 - Improved IsRunning function to better target processes
 - Several smaller adjustments in text and descriptions
 - Extended ReportException function with logging text
 - Improved GetHostID function for NetBSD and Solaris
 - Added printing_daemon and mail_daemon to report
 - Binaries extended with tools like kstat, puppet

---------------------------------------------------------------------------------

Lynis 1.5.8 (2014-07-24)

 New:
 - Testing for commercial anti-virus solutions like McAfee and Sophos [MALW-3280]
 - New control text for MALW-3280 - http://cisofy.com/controls/MALW-3280/

 Changes:
 - Extended GRUB test with encrypted password (SHA1) [BOOT-5121]
 - Check /etc/profile for multiple umask values [AUTH-9328]
 - Extended PHP disabled functions test [PHP-2320]
 - Add gpgcheck parameter to YUM test [PKGS-7387]
 - Squid configuration file permissions test adjusted and control added to website [SQD-3613]
 - Logging has been extended and exceptional event text adjusted

---------------------------------------------------------------------------------

Lynis 1.5.7 (2014-07-09)

 New:
 - Implementation of SafePerms function
 - Added notification when exceptions are found

 Changes:
 - Fix for error_log handling in nginx

---------------------------------------------------------------------------------

Lynis 1.5.6 (2014-06-12)

 New:
 - Test for PHP binary and PHP version
 - Don't perform register_global test for systems running PHP 5.4.0 and later [PHP-2368]
 - Debug function (can be activated via --debug or profile)

 Changes:
 - Extended IsRunning function
 - Removed suggestion from secure shell test [SHLL-6202]
 - Check for idle session handlers [SHLL-6220]
 - Also check for apache2 binary (file instead of directory)
 - New report values: session_timeout_enabled and session_timeout_method
 - New report value for plugins: plugins_enabled
 - Fixed test to determine active TCP sessions on Linux [NETW-3012]

---------------------------------------------------------------------------------

Lynis 1.5.5 (2014-06-08)

 New:
 - Check for nginx access logging [HTTP-6712]
 - Check for missing error logs in nginx [HTTP-6714]
 - Check for debug mode in nginx [HTTP-6716]

 Changes:
 - Extended SSL test for nginx when using listen statements
 - Allow debugging via profile (config:debug:yes)
 - Check if discovered httpd file is actually a file
 - Improved temporary file creation related to security notice
 - Adjustments to screen output

 Security Note:
 This releases solves two issues regarding the usage of temporary
 files (predictability of the file names). You are advised to upgrade
 to this version as soon as possible. For more information see the
 our blog post: http://linux-audit.com/lynis-security-notice-154-and-older/

---------------------------------------------------------------------------------

Lynis 1.5.4 (2014-06-04)

 New:
 - Check additional configuration files for nginx [HTTP-6706]
 - Analysis of nginx settings [HTTP-6708]
 - New test for SSL configuration of nginx [HTTP-6710]

 Changes:
 - Altered SMBD version check for Mac OS
 - Small adjustments to report for readability

---------------------------------------------------------------------------------

Lynis 1.5.3 (2014-05-19)

 New:
 - Support for zypper package manager
 - Gather installed packages with Zypper on SuSE systems [PKGS-728]
 - Check for vulnerable packages with Zypper package manager [PKGS-7330]

 Changes:
 - Check for aide.conf also in /etc [FINT-4315]
 - Adjusted screen output for unreliable NTP peers [TIME-3120]
 - Adjusted check kernel test for non-Linux systems [KRNL-5730]
 - Improved screen output on AIX systems with echo command

---------------------------------------------------------------------------------

Lynis 1.5.2 (2014-05-05)

 New:
 - Support for runlevel in binaries test

 Changes:
 - Added suggestion for kernel availability check [KRNL-5788]
 - Added suggestion for services at startup and proper binary call [BOOT-5180]
 - Added suggestion to configure accounting on FreeBSD [ACCT-2754]
 - Added suggestion to configure Linux process accounting [ACCT-9622]
 - Several new controls listed on website
 - Adjusted hardening index if total score was zero
 - Added suggestion for auditd.conf file [ACCT-9632]
 - Removed suggestion for audit log file [ACCT-9634]
 - Removed warning from NTP falsetickers test, added data to report [TIME-3132]
 - Removed warning from NTP selected time source test [TIME-3124]

---------------------------------------------------------------------------------

Lynis 1.5.1 (2014-04-22)

 Changes:
 - Extended reporting with running databases and frameworks
 - Adjusted Oracle status in test [DBS-1840]
 - Extended grsecurity test [RBAC-6272]
 - Redirect rpcinfo errors to /dev/null
 - Adjusted color scheme

---------------------------------------------------------------------------------

Lynis 1.5.0 (2014-04-10)

 New:
 - Support for Amazon Linux
 - NTP check for step-tickers file (Red Hat and clones) [TIME-3160]

 Changes:
 - Minor textual changes in description of several controls
 - Removed several warnings (usage of suggestions instead)
 - Website has now more information for several controls
 - Extended detection for Oracle Linux
 - Updated the FAQ and README files

---------------------------------------------------------------------------------

Lynis 1.4.9 (2014-04-03)

 New:
 - Added links in report to related control documentation on website
 - Detect Linux I/O kernel scheduler [KRNL-5730]

 Changes:
 - Check for non-unique accounts on several platforms [AUTH-9208]
 - Set initial discover value for PAM modules to zero [AUTH-9268]

---------------------------------------------------------------------------------

Lynis 1.4.8 (2014-03-27)

 Changes:
 - Adjusted resolv.conf domain setting in report [NAME-4016]
 - Extend account test with /var/log/pacct [ACCT-9620]
 - Added suggestion to DNS domain name test [NAME-4028]
 - Changed text strings of ZFS test [FILE-6330]
 - Extend LILO password test [BOOT-5139]
 - Set default value for pf firewall

---------------------------------------------------------------------------------

Lynis 1.4.7 (2014-03-21)

 New:
 - New configuration item to set group name
 - Search for AIDE configuration file (aide.conf) [FINT-4315]
 - Check for usage of SHA256/SHA512 in AIDE configuration [FINT-4316]
 - Added grep to list of binaries

 Changes:
 - Added suggestion when using NIS or NIS+ [NAME-4302]
 - Clean-up of unneeded plugin section
 - Small typo fix

---------------------------------------------------------------------------------

Lynis 1.4.6 (2014-03-14)

 New:
 - Check for GPG signing in yum.conf [PKGS-7387]
 - Check CUPS configuration file permissions [PRNT-2307]

 Changes:
 - Screen cleanup

---------------------------------------------------------------------------------

Lynis 1.4.5 (2014-03-08)

 New:
 - Support for Chakra Linux
 - Support for pacman binary (package manager)
 - Query installed packages on systems with pacman [PKGS-7310]

 Changes:
 - Avoid logging to screen when falsetickets are found [TIME-3132]
 - Skipping FIFO file on Solaris systems when checking for cron jobs [TIME-3104]
 - Extended uptime test for Solaris systems [BOOT-5202]
 - Added /usr/lib/security to PAM locations to scan
 - Report cronjobs to report [SCHD-7704]
 - HostID support for Solaris
 - Improved color scheme
 - Extended logging

---------------------------------------------------------------------------------

Lynis 1.4.4 (2014-03-03)

 New:
 - Detect tune2fs binary
 - Added ExitFatal() function
 - Added egrep binary to binaries
 - Initial plugin support (phase 1)
 - Added InsertPluginSection() function

 Changes:
 - Adjusted disabled functions tests to properly find functions [PHP-2320]
 - Extended time test with egrep binary replace for Solaris [TIME-3104]
 - Adjusted color for SNMP test when warning is found [SNMP-3306]
 - Adjusted text for PHP risky functions [PHP-2320]
 - Refer to discovered binaries for ifconfig, lsmod, tune2fs
 - Test plugin directory when provided by --plugin-dir
 - Scan report extended with plugin information
 - Extended help for Enterprise options
 - Improved IsRunning() function
 - Extended color scheme

---------------------------------------------------------------------------------

Lynis 1.4.3 (2014-02-23)

 New:
 - Support for ClearOS
 - Data upload for Lynis Enterprise users (--upload)
 - Added debug variable for troubleshooting purposes
 - Scan profile option license_key

 Changes:
 - Skip password check for Red Hat or clones [AUTH-9282]
 - Extended single user login protection [AUTH-9308]
 - Adjusted repolist check for yum based systems [PKGS-7383]
 - Inserted sleep time when update is found
 - Extended report output

---------------------------------------------------------------------------------

Lynis 1.4.2 (2014-02-19)

 Changes:
 - Ignore interfaces aliases for HostID
 - Extended umask tests with pam_umask entries [AUTH-9328]
 - Check for supressed version on Squid [SQD-3680]

---------------------------------------------------------------------------------

Lynis 1.4.1 (2014-02-15)

 New:
 --plugin-dir parameter

 Changes:
 - Added 64 bits locations for Apache modules
 - Add start of new category to logfile
 - Extended sysstat test with /etc/cron.d/sysstat [ACCT-9626]
 - Extended cron job tests with entries start with asterix (*) [SCHD-7704]
 - Additional check for multiple umask entries (like RHEL 6.x) [AUTH-9328]
 - Adjusted PHP test for register_globals (explicit test) [PHP-2368]
 - Small adjustments for upcoming plugin support
 - Extended man page

---------------------------------------------------------------------------------

Lynis 1.4.0 (2014-01-29)

 Changes:
 - Removed some warnings, to prevent double messages
 - Extended accounting check for Linux [ACCT-9622]
 - Added consistency check to time test [TIME-3124]
 - Added support for anacron jobs [SCHD-7704]
 - Rewrite of YUM repository test [PKGS-7383]
 - Use binary variables for hostid creation
 - AIX version detection changed
 - Added rpcinfo to binaries check
 - Ignore LANG global setting
 - Improved logging

---------------------------------------------------------------------------------

Lynis 1.3.9 (2014-01-09)

 Changes:
 - Additional support for Mac OS
 - Support for shasum binary
 - Performance adjustment for lsof tests
 - Extended interface check for hostid creation
 - Improved NSCD detection [NAME-4032]
 - Bug fix for passwdqc [AUTH-9262]
 - Extended vulnerable packages test [PKGS-7392]
 - Hide possible sysctl errors [KRNL-5820]

---------------------------------------------------------------------------------

Lynis 1.3.8 (2013-12-25)

 New:
 - New parameter --view-categories to display available test categories
 - Added /etc/hosts check (duplicates) [NAME-4402]
 - Added /etc/hosts check (hostname) [NAME-4404]
 - Added /etc/hosts check (localhost mapping) [NAME-4406]
 - Portmaster test for possible port upgrades [PKGS-7378]
 - Check for SPARC improve boot loader (SILO) [BOOT-5142]
 - NFS client access test [STRG-1930]
 - Check system uptime [BOOT-5202]
 - YUM repolist check [PKGS-7383]
 - Contributors file added

 Changes:
 - Improved locate database check and reporting [FILE-6410]
 - Improved PAE/No eXecute test for Linux kernel [KRNL-5677]
 - Disabled NIS domain name from test [NAME-4028]
 - Extended NIS domain test to check BSD sysctl value [NAME-4306]
 - Extended PAM tools check with PAM paths [AUTH-9262]
 - Adjusted Apache check to avoid skipping it [HTTP-6622]
 - Extended USB state testing [STRG-1840]
 - Extended Firewire state testing [STRG-1846]
 - Extended core dump test [KRNL-5820]
 - Added /lib/i386-linux-gnu/security to PAM directories
 - Added /usr/X11R6/bin directory to binary paths
 - Improved readability of screen output
 - Improved logging for several tests
 - Improved Debian version detection
 - Added warning to BIND test [NAME-4206]
 - Extended binaries with showmount and yum
 - Updated man page

---------------------------------------------------------------------------------

Lynis 1.3.7 (2013-12-10)

 New:
 - Function FileExists() and SearchItem()

 Changes:
 - Adjusted yum-security check [PKGS-7386]
 - Improved check for iptables binary check
 - Extended report with the tests executed and skipped

---------------------------------------------------------------------------------

Lynis 1.3.6 (2013-12-03)

 New:
 - Support for the dntpd time daemon
 - New Apache test for modules [HTTP-6632]
 - Apache test for mod_evasive [HTTP-6640]
 - Apache test for mod_qos [HTTP-6641]
 - Apache test for mod_spamhaus [HTTP-6642]
 - Apache test for ModSecurity [HTTP-6643]
 - Check for installed package audit tool [PKGS-7398]
 - Added initial support for new pkgng and related tools [PKGS-7381]
 - Check for ssh-keyscan binary
 - ZFS support for FreeBSD [FILE-6330]
 - Test for passwordless accounts [AUTH-9283]
 - Initial OS support for DragonFly BSD
 - Initial OS support for TrueOS (FreeBSD based)
 - Initial OS support for elementary OS (Luna)
 - GetHostID for DragonFly, FreeBSD, NetBSD and OpenBSD
 - Check for DHCP client [NETW-3030]
 - Initial support for OSSEC (system integrity) [FINT-4328]
 - New parameter --log-file to adjust log file location
 - New function IsRunning() to check status of processes
 - New function RealFilename() to determine file name
 - New function CheckItem() for parsing files
 - New function ReportManual() and ReportException() to simplify code
 - New function DirectoryExists() to check existence of a directory
 - Support for dntpd [TIME-3104]

 Changes:
 - Extended pf checks for FreeBSD/OpenBSD and others [FIRE-4518]
 - Extended test to gather listening network ports for Linux [NETW-3012]
 - Adjusted lsof statement to ignore warnings (e.g. fuse) [LOGG-2180] [LOGG-2190]
 - Added suggestion for discovered shells on FreeBSD [AUTH-9218]
 - Extended core dump test with additional details [KRNL-5820]
 - Properly display suggestion if portaudit is not installed [PKGS-7382]
 - Ignore message if no packages are installed (pkg_info) [PKGS-7320]
 - Also try using apt-check on Debian systems [PKGS-7392]
 - Adjusted logging for RPM binary on systems not using it [PKGS-7308]
 - Extended search in cron directories for rdate/ntpdate [TIME-3104]
 - Adjusted PHP check to find ini files [PHP-2211]
 - Skip Apache test for NetBSD [HTTP-6622]
 - Skip test http version check for NetBSD [HTTP-6624]
 - Additional check to supress sort error [HTTP-6626]
 - Improved the way binaries are checked (less disk reads)
 - Adjusted ReportWarning() function to skip impact rating
 - Improved report on screen by leaving out date/time and type
 - Redirect errors while checking for OpenSSL version
 - Extended reporting with firewall status and software
 - Adjusted naming of some operating systems to make them more consistent
 - Extended update check by using host binary if dig is not installed
 - Count number of installed binaries/packages and report them
 - Report about log rotation tool and status
 - Updated man page

---------------------------------------------------------------------------------

Lynis 1.3.5 (2013-11-19)

 New:
 - OS detection for Mageia Linux, PCLinuxOS, Sabayon Linux and Scientific Linux
 - Added some initial systemd support (e.g. boot services)
 - Test to display if any known MAC framework is implemented [MACF-6290]

 Changes:
 - Improved support for Slackware Linux (OS and version detection)
 - Added systemd support (boot and running services) for Linux systems [BOOT-5177]
 - Added systemd support (default runlevel) for Linux systems [KRNL-5622]
 - Extended USB storage check in modprobe.d directory [STRG-1840]
 - Improved output, reporting and check for kernel update [KRNL-5788]
 - Optimized code and output of test to check writable scripts [BOOT-5184]
 - Fixed detection for writable scripts [BOOT-5184]
 - Improved detection IPv6 addresses for Slackware and others [NETW-3008]
 - Minor addition to SSH PermitRootLogin check [SSH-7412]
 - Extended cronjob tests, reporting and logging [SCHD-7704]
 - Extended umask check in /etc/profile [AUTH-9328]
 - Added suggestion about BIND version [NAME-4210]
 - Merged test NTP daemon test TIME-3108 into TIME-3104
 - Improved support for Arch Linux (output, detection)
 - Extended common list of directories with SSL certifcates in profile
 - New function GetHostID() to determine an unique identifier of the machine
 - Added a tests_custom file template
 - Perform file permissions test on tests_custom file
 - Improved OS detection and extended logging on several tests
 - Several layout improvements
 - Extended update check functions and output
 - Cleaned up reporting and extended it with exceptions

---------------------------------------------------------------------------------

Lynis 1.3.4 (2013-11-08)

 New:
 - OS detection support for Arch Linux
 - Support for systemd journal

 Changes:
 - Test for files in /etc/modprobe.d directory [STRG-1840]
 - Extended log daemon detection with systemd journal [LOGG-2130]
 - Adjusted hardening value for compiler GCC [HRDN-7222]
 - Extended IsWorldWritable and IsWorldExecutable functions to support symlinks
 - Adjusted PHP test for disabled functions [PHP-2320]
 - Extended testing for PHP files in other directories [PHP-2211]
 - Improved screen output for several tests and extended logging

---------------------------------------------------------------------------------

Lynis 1.3.3 (2013-10-24)

 New:
 - Added NTP configuration type to report [TIME-3104]

 Changes:
 - Do not warn on empty shells for FreeBSD systems [AUTH-9218]
 - Extended checks for presence NTP client or daemon [TIME-3104]
 - Extended logging

---------------------------------------------------------------------------------

Lynis 1.3.2 (2013-10-09)

 New:
 - Test for PowerDNS authoritive servers (master/slave status) [NAME-4238]

 Changes:
 - CUPS test extended with hardening rules [PRNT-2308]
 - Added hardening points to sticky bit on /tmp [FILE-6362]
 - Extended Ubuntu security packages check [PKGS-7392]
 - Improved update check, show when no check is performed
 - Added additional check for binaries, so checks on CentOS work correctly
 - Added word 'restricted' to banner strings
 - Adjusted wording for Debian packages purge [PKGS-7346]
 - Corrected listing of purgable packages [PKGS-7346]
 - Adjusted yum-plugin-security check due to package changes [PKGS-7386]

---------------------------------------------------------------------------------

Lynis 1.3.1 (2013-10-02)

 Changes:
 - Updated generic references in files
 - Fixed detection of several binaries (AFICK/awk)
 - Performance tweaks when checking for binaries
 - Fixed core dump check and dumpable sysctl [KRNL-5820]
 - Force test to always to check for binaries [FILE-7502]
 - Changed detection to egrep [DBS-1840]
 - Adjusted variable checking for Solaris [HOME-9310]
 - Adjusted search in modprobe directory [STRG-1840] [STRG-1846]

---------------------------------------------------------------------------------

Lynis 1.3.0 (2011-12-25)

 New:
 - Profile option: ignore_home_dir
 - TCP wrappers category added
 - Tooling category added
 - Initial extensions to support plugins in the future
 - Test for unpurged Debian packages [PKGS-7346]
 - Test for compiler permissions [HRDN-7222]

 Changes:
 - Converted all dates to ISO format and updated copyright lines
 - Correct suggestion for file integrity tool [FINT-4350]
 - Added hint when RPM list is empty on DPKG based systems [PKGS-7308]
 - Changed logging for /etc/security/limits.conf file [KRNL-5820]
 - Fixed incorrect warning for single user mode [AUTH-9308]
 - Improved output for stratum 16 time servers [TIME-3116]
 - Added suggestion and screen output for kernel hardening [KRNL-6000]
 - Screen layout optimalizations and log file improvements
 - Improved list/layout of scan options
 - Improved binary check for compilers
 - Added configuration option in scan profile (show_tool_tips, default true)

---------------------------------------------------------------------------------

Lynis 1.2.9 (2009-12-15)

 New:
 - Support for Squid3
 - Added Squid unsafe ports check [SQD-3624]
 - Added Squid configuration file permission check [SQD-3613]
 - Added Squid test: reply_body_max_size option [SQD-3630]
 - Added /etc/init.d/rc and /etc/init.d/rcS to umask test [AUTH-9328]
 - Check PHP option allow_url_include [PHP-2378]

 Changes:
 - Extended possible Squid configuration file locations
 - Added additional sysctl keys to default profile
 - Fixed typo in squid.conf checks
 - Improved descriptions, logging and reporting for several tests
 - Corrected /etc/security/limits.conf path in test [KRNL-5820]
 - Updated man page, limited lines to 80 chars

---------------------------------------------------------------------------------

Lynis 1.2.8 (2009-12-08)

 New:
 - Squid support added
 - Squid daemon detection [SQD-3602]
 - Squid configuration file search [SQD-3604]
 - Squid version detection [SQD-3606]
 - Check /etc/motd banner [BANN-7122]
 - Check /etc/issue.net file [BANN-7128]
 - Check contents in /etc/issue.net [BANN-7130]
 - Solaris single user mode login check (/etc/default/sulogin) [AUTH-9304]
 - HP-UX boot authentication check [AUTH-9306]
 - Linux single user mode authentication check [AUTH-9308]
 - Solaris account locking policy check [AUTH-9340]

 Changes:
 - Added prerequisite to SSH test, so the test is skipped properly [SSH-7440]
 - Check for /etc/issue symlink [BANN-7124]
 - Added file check for possible harmful shells found [AUTH-9218]
 - Add user home directories to report [HOME-9302]
 - Extended Linux run level test with support for Debian/Ubuntu [KRNL-5622]
 - Added /lib64/security to PAM test [AUTH-9262]
 - Extended security repository check [PKGS-7388]
 - Iptables check should not check for a module in a Linux config [FIRE-4511]
 - Ignore APC ups daemon when scanning for CUPS [PRNT-2304]
 - Improved kernel logger daemon check [LOGG-2138]
 - Added auditctl to binary check [ACCT-9630]
 - Log used auditd ruleset [ACCT-9630]
 - Corrected logging of Solaris c2audit module [ACCT-9656]
 - Fixed warning function for Solaris passwordless accounts [AUTH-9254]
 - Commented kern.randompid in default profile
 - For sysctl the parameter -n will be used on Linux systems
 - Changed syslog daemon detection and state
 - Extended report file

---------------------------------------------------------------------------------

Lynis 1.2.7 (2009-11-01)

 New:
 - Added Kernel Hardening section
 - Sysctl audit support in scan profile and related test [KRNL-6000]
 - SSH option StrictModes test [SSH-7416]
 - Password aging limit check [AUTH-9286]
 - Ubuntu packages check (apt-show-versions) [PKGS-7394]
 - Check for metalog daemon [LOGG-2210]
 - USB storage driver state check [STRG-1840]
 - Firewire storage driver state check [STRG-1846]
 - PostgreSQL process check [DBS-1826]
 - Oracle process check [DBS-1840]
 - Default umask check [AUTH-9328]
 - Check for rsyslog daemon [LOGG-2230]
 - RFC 3195 compliant daemon check [LOGG-2240]
 - Qmail SMTP daemon check [MAIL-8940]
 - Test for separation of /tmp and /home from root file system [FILE-6310]
 - SSH AllowUsers and AllowGroups usage check [SSH-7440]
 - AIX support, thanks to Michael Smerdka

 Changes:
 - Fixed crontabs path [SCHD-7704]
 - Extended locate database paths for Linux and FreeBSD [FILE-6410]
 - pflog detection fix [FIRE-4518]
 - Skip /proc/meminfo for non Linux systems [PROC-3602]
 - Extended text with rsyslogd [LOGG-2130]
 - Ignore comment and empty lines for group tests [AUTH-9222/9226]
 - Show firewall as active when iptables is available in config file [FIRE-4511]
 - Variable fix for SNMP daemon configuration file [SNMP-3304]
 - Freshclam check fix [MALW-3286]
 - Fixed waiting search for NIS domain [NAME-4306]
 - Check for a maximum of 1 search statement in /etc/resolv.conf [NAME-4018]
 - Apache test improved [HTTP-6622]
 - Skip klogd test if rsyslogd is available [LOGG-2138]
 - Added additional CUPS location to search paths
 - Only execute PAM test for systems with PAM [AUTH-9268]
 - Fixed logging of sudoers file location [AUTH-9250]
 - Improved FreeBSD support for NTP client check [TIME-3104]
 - Redirect warning "Unknown host" when DNS domain name is empty [NAME-4028]
 - Redirect warning when host name is empty
 - Fixed warning color [AUTH-9226]
 - Fixed FreeBSD COPYRIGHT file test [BANN-7113]
 - Changed text for sudoers text [AUTH-9250]
 - Improved text for DNS search domain [NAME-4016]
 - Skip nginx configuration test if nginx is not available [HTTP-6704]
 - Removed portsclean suggestion [PKGS-7348]
 - Fixed non unique IDs
 - Fixed cosmetic issue when using Debian with default dash shell
 - Improved hostname detection for HP-UX
 - Added additional php.ini file locations
 - Moved Linux default shell check to OS detection functions
 - Fixed CUPS daemon test [PRNT-2304]
 - Also check for uppercase chars in issue file [BANN-7126]

---------------------------------------------------------------------------------

Lynis 1.2.6 (2009-04-05)

 New:
 - Sudoers file permissions check [AUTH-9252]
 - Core dumps configuration check for Linux [KRNL-5820]
 - PHP disabled functions check [PHP-2320]
 - PHP enable_dl function check [PHP-2374]
 - PHP allow_url_fopen function check [PHP-2376]
 - OpenBSD smtpd status check [MAIL-8920]
 - /etc/issue check [BANN-7124]
 - /etc/issue legal keywords check [BANN-7126]
 - Show suggestions in report

 Changes:
 - Extended support for Red Hat, CentOS and Fedora
 - Extended ACL test to test for default mount options as well [FILE-6368]
 - Exim status test fixed [MAIL-8812]
 - Corrected yum security check [PKGS-7386]
 - Replaced LDAP test AUTH-9238 with [AUTH-9402]
 - Removed backquotes when locate database is not available [FILE-6410]
 - Added /etc/openldap to search path for OpenLDAP
 - Fixed typo in crontab path [SCHD-7704]
 - Don't show message "No volume groups found" if LVM isn't used [FILE-6310]
 - Corrected Syslog-NG status [LOGG-2132]
 - Moved TODO to dev directory

---------------------------------------------------------------------------------

Lynis 1.2.5 (2009-03-27)

 New:
 - slapd.conf check [LDAP-2224]
 - atd status test [SCHD-7718]
 - Check LDAP module in PAM [AUTH-9278]
 - Check Dovecot status check [MAIL-8838]
 - Check log directories from newsyslog.conf [LOGG-2162]
 - Check log directories from static list [LOGG-2170]
 - Check log directories from logrotate configuration [LOGG-2150]
 - syslog check for remote logging [LOGG-2154]
 - Open log files check [LOGG-2180]
 - Deleted file check [LOGG-2190]
 - Solaris active kernel modules check [KRNL-5770]
 - Solaris audit daemon status check [ACCT-9650]
 - Solaris audit daemon service status [ACCT-9652]
 - Solaris audit daemon BSM check [ACCT-9654]
 - Solaris audit logging location check [ACCT-9662]
 - Solaris audit statistics check [ACCT-9672]
 - Check for installed compiler [HRDN-7202]
 - BIND process check [NAME-4202]
 - BIND configuration file check [NAME-4204]
 - BIND configuration consistency check [NAME-4206]
 - BIND version check via DNS [NAME-4210]
 - Default domain check (/etc/resolv.conf) [NAME-4016]
 - Search domains in /etc/resolv.conf check [NAME-4018]
 - Parse /etc/resolv.conf options [NAME-4020]
 - Solaris /etc/nodename check [NAME-4026]
 - DNS domain checks [NAME-4028]
 - NSCD status check [NAME-4032]
 - PowerDNS presence check [NAME-4230]
 - PowerDNS configuration file check [NAME-4232]
 - PowerDNS backend check [NAME-4236]
 - ypbind status check [NAME-4302]
 - Log specific defined SSH daemon options [SSH-7408]
 - SSH protocol version check [SSH-7414]
 - NIS domain checks [NAME-4304]
 - Check pending at jobs [SCHD-7724]
 - LVM volume group scan [FILE-6310]
 - LVM volumes check [FILE-6312]
 - Locate database check [FILE-6410]
 - nginx configuration file check [HTTP-6704]
 - Exim status check [MAIL-8802]
 - Postfix status check [MAIL-8814]

 Changes:
 - atd needs to run before testing at files [SCHD-7720]
 - Removed Solaris OS requirement from logrotate test [LOGG-2148]
 - Sanitized output from logrotate test [LOGG-2148]
 - Skip comment fields in loghost check [LOGG-2152]
 - Changed auditd tests to Linux only
 - Binary scan optimized and partially combined with other check
 - Only perform iptables tests if kernel module is active
 - Don't show message when /etc/shells can't be found [SHLL-6211]
 - Check /var/spool/cron/crontabs first, if it exists [SCHD-7704]
 - Renumbered FreeBSD test SHLL-7225 [SHLL-6202]
 - Renumbered malware test MALW-3292 [HRDN-7230]
 - Improved grep on process status [PRNT-2304]
 - Ignore comment lines for nginx log file check [HTTP-6720]
 - Added file check for nginx log files [HTTP-6720]
 - Display IP addresses only of NTP tests [TIME-3124]
 - Fixed Postfix configuration directory path [MAIL-8816]
 - Redirected output of yum package duplicate check [PKGS-7384]
 - Ignore comment lines for lilo test [BOOT-5139]
 - Fixed incorrect iptables status and correct logging [FIRE-4511]
 - Check SNMP configuration only if SNMP daemon runs [SNMP-3304]
 - Don't scan PAM directories which are symlinks [AUTH-9268]
 - Changed hardening category to hardening_tools
 - Adjusted hardening points of several tests
 - Log and display improvements for several tests

---------------------------------------------------------------------------------

Lynis 1.2.4 (2009-03-17)

 New:
 - NTP daemon process test [TIME-3108]
 - NTP association ID's check from peer list [TIME-3112]
 - NTP time source candidates test [TIME-3128]
 - NTP falseticker check [TIME-3132]
 - NTP protocol version check [TIME-3136]
 - Stratum 16 ntp peers check [TIME-3116]
 - Unreliable ntp peers check [TIME-3120]
 - Preferred NTP time source test [TIME-3124]
 - auditd presence check [ACCT-9628]
 - auditd rules check [ACCT-9630]
 - auditd configuration file check [ACCT-9632]
 - auditd log file location check [ACCT-9634]
 - cupsd status check [PRNT-2304]
 - cupsd configuration file check [PRNT-2306]
 - cupsd address configuration test [PRNT-2308]
 - pam.conf configuration check [AUTH-9264]
 - pam.d configuration file scan [AUTH-9266]
 - PAM modules check [AUTH-9268]
 - rpcinfo query [STRG-1902]
 - NFS version number check [STRG-1904]
 - NFS protocol and port number check [STRG-1906]
 - NFS status check [STRG-1920]
 - NFS exports check [STRG-1926]
 - NFS empty /etc/exports [STRG-1928]
 - SSH PermitRootLogin option check [SSH-7412]
 - at.allow and at.deny check [SCHD-7720]
 - File integrity tool check [FINT-4350]
 - nginx process check [HTTP-6702]
 - nginx log file test [HTTP-6720]
 - ClamAV clamscan presence test [MALW-3282]
 - ClamAV daemon check [MALW-3284]
 - ClamAV freshclam check [MALW-3286]
 - Check for presence malware scanner [MALW-3292]
 - clamscan, ntpq binary check
 - NTP daemon role and profile option
 - Parameter --tests-category, to scan one or more categories
 - Category added (Storage: NFS)
 - Added hardening points to tests
 - Display hardening index to report

 Changes:
 - Extended logrotate test [LOGG-2148]
 - Added check for inetd.conf before performing test [INSE-8016]
 - Added /var/spool/crontabs to search path [TIME-3104]
 - Added log line to sysstat test [ACCT-9626]
 - Improved screen output on Solaris
 - Checking for both rdate and ntpdate in cron files [TIME-3104]
 - Changed yum-security package check [PKGS-7386]
 - Change output if dig isn't available [NETW-2705]
 - Added IPv6 support and output adjustment [NETW-2704]
 - Cosmetic change for host based firewall check [FIRE-4590]
 - Corrected output in log file [PKGS-7388]
 - Corrected passwd options for Red Hat [AUTH-9282]
 - Changed text if everything is ok (no warnings)
 - Log improvements

---------------------------------------------------------------------------------

Lynis 1.2.3 (2009-03-02)

 New:
 - Added syslog-NG daemon check [LOGG-2132]
 - Added klogd status test [LOGG-2138]
 - Added check to determine minilogd presence [LOGG-2142]
 - Added logrotate configuration test [LOGG-2146]
 - Added check for loghost entry on Solaris machines [LOGG-2152]
 - Added ipf test for Solaris [FIRE-4526]
 - Added uname -n test (Solaris) [NAME-4024]
 - Added ssh daemon configuration file check [SSH-7404]
 - Added BSD newsyslog.conf file check [LOGG-2160]
 - Added inetd status check [INSE-8002]
 - Added inetd.conf configuration check [INSE-8004]
 - Added check for inetd.conf when inetd is not active [INSE-8006]
 - Added telnet check via inetd [INSE-8016]
 - Added ACL check on root file system [FILE-6368]
 - Added check for firewall/packet filter on system [FIRE-4590]
 - Added lograte file check [LOGG-2148]
 - Added snmp daemon status test [SNMP-3302]
 - Added snmp configuration file test [SNMP-3304]
 - Added default snmp community strings test [SNMP-3306]
 - Added categories: Insecure services and SNMP
 - Added binary searches for awk, ipf

 Changes:
 - Changed profile name in default profile
 - Added path /usr/ucb to binary paths
 - Changed color to white if slapd is not running [LDAP-2219]
 - Changed test PKG-7345 into PKGS-7345
 - Changed logging for several tests [PKGS-7302] [NETW-3004]
 - Extended FAQ
 - Changed default profile header

 Fixes:
 - Hostname detection under Solaris
 - Disabled tests PROC-3612 PROC3614 for Solaris machines
 - Disabled NTP check in cron.d directory on Solaris [TIME-3104]
 - Added result at line when querying system users [AUTH-9234]
 - Counters (N+1) fixed for some shells, like Solaris
 - Removed unneeded line for Solaris test [PROC-3604]
 - Disabled grsecurity test for Solaris [RBAC-6272]
 - Correct display of files with spaces [FILE-6354]
 - Changed several tests so they work correctly with Solaris

---------------------------------------------------------------------------------

Lynis 1.2.2 (2009-02-15)

 New:
 - Support for MySQL client
 - New test: Test for empty MySQL root password [DBS-1816]
 - New test: SSH daemon status test [SSH-7402]
 - New test: sysstat account information [ACCT-9626]
 - New test: connections in WAIT state [NETW-3028]
 - Lynis displays a warning now, if current version is really outdated
 - New parameter option (log_tests_incorrect_os) to minimize logging

 Changes:
 - Several adjustments to default profile
 - Fixed option 'skip_test_always' to let it function properly
 - Fixed passwd check for SuSE systems [AUTH-9282]
 - Added error redirect for dpkg test [PKG-7345]
 - Improved NTP test and messages, excluded check when using xen [TIME-3104]
 - Extended DNS nameserver check with local resolver [NETW-2704]
 - Skip double nameserver check when a local resolver is found [NETW-2705]
 - Renamed tests_nameserver to tests_nameservices
 - Improved log output [AUTH-9218]

 Notes:
 - Custom profiles should be compared to the default profile, due small changes
   in the structure.

---------------------------------------------------------------------------------

Lynis 1.2.1 (2008-09-05)

 New:
 - Added support for Samba
 - Added support for SELinux framework
 - New test: SELinux presence test [MACF-6232]
 - New test: SELinux status checks [MACF-6234]
 - New test: password PAM availability check [AUTH-9262]
 - New test: expire date check for accounts [AUTH-9282]
 - Added new option --tests, to run a small set of tests only

 Changes:
 - Report and logging messages improved
 - Output reduced when using --tests
 - Added suggestion to PHP expose_php option [PHP-2372]
 - Improved log message for PHP register_globals option [PHP-2368]
 - Added virtual host count to log file [HTTP-6626]
 - Improved Red Hat and clones detection and display
 - Fix: Improved promiscuous detection for Linux [NETW-3015]
 - Fix: AUTH-9204 test triggered on group ids as well
 - Fix: Only display unique MAC addresses [NETW-3006]
 - Extended Postfix test [MAIL-8818]
 - Don't show /proc/meminfo if not present [PROC-3602]
 - Don't show YABOOT information if not present [BOOT-5155]
 - Improved portaudit test (FreeBSD) [PKGS-7382]
 - Improved portsclean test (FreeBSD) [PKGS-7348]
 - Added --quiet and --tests options to help and man page

---------------------------------------------------------------------------------

Lynis 1.2.0 (2008-08-26)

 New:
 - New test: Passwordless Solaris accounts test [AUTH-9254]
 - New test: AFICK file integrity [FINT-4310]
 - New test: AIDE file integrity [FINT-4314]
 - New test: Osiris file integrity [FINT-4318]
 - New test: Samhain file integrity [FINT-4322]
 - New test: Tripwire file integrity [FINT-4326]
 - New tests: NIS and NIS+ authentication test [AUTH-9240/42]
 - Initial support added for AFICK, AIDE, Osiris, Samhain, Tripwire

 Changes:
 - Changed text of grsecurity test [RBAC-6272]
 - Optimized FreeBSD boot services test [BOOT-5165]
 - Optimized UID 0 test [AUTH-9204]
 - Extended login shells test [AUTH-9218]
 - PID file message extended and small output improvement
 - A log entry will be written when PID files are removed
 - Added operating system name to log file when a test is skipped
 - Added file available check when using --view-manpage
 - Most program variables are initialized now for future additions

---------------------------------------------------------------------------------

Lynis 1.1.9 (2008-08-09)

 New:
 - New test: AppArmor framework check [MACF-6204]
 - New test: FreeBSD boot loader test [BOOT-5124]
 - New test: PHP option register_globals [PHP-2368]
 - New test: Promiscuous network interfaces (Linux) [NETW-3015]
 - Report option 'bootloader' added to several tests
 - Added readlink binary check

 Changes:
 - Extended file check (IsWorldWritable) for symlinks
 - Show result if no default gateway is found [NETW-3001]
 - Added /usr/local/etc to sudoers test [AUTH-9250]
 - Improved FreeBSD banner output [BANN-7113]
 - Removed incorrect line at promiscuous interface test [NETW-3014]
 - Fix: Show only once the GRUB test output [BOOT-5121]
 - Fix: Typo in NTP test [TIME-3104]
 - Fix: Skip NTP test in /etc/cron.d if empty [TIME-3104]
 - Fix: Initialize values when performing an update check without connection
 - Fix: Solaris id function has been fixed
 - Disabled FreeBSD double packages tests, due minor issues [PKGS-7303]
 - Changed LDAP/MySQL running states [LDAP-2219] [DBS-1804]
 - Replaced ifconfig calls with IFCONFIGBINARY
 - Renamed tests_auditing to tests_mac_frameworks
 - Several tests improved with extended logging

---------------------------------------------------------------------------------

Lynis 1.1.8 (2008-07-16)

 New:
 - Mac OS X support extended and new options added

 Changes:
 - Extended default profile
 - Improved several screen output lines
 - User ID check improved, so it works better with older Solaris versions
 - Hostname in output and reports will contain only host now, not FQDN
 - Added extra php.ini locations to tests_php
 - Replaced 'ps' in tests with PSBINARY value for better support
 - Added output to zones test [VIRT-1902]
 - Updated description [AUTH-9218]
 - Extended ntp daemon/ntpdate check [TIME-3104]
 - Added suggestion to bootable scripts check [BOOT_5184]
 - Bugfix and improvement for FreeBSD portsclean test [PKGS-7348]
 - Added Mac OS support to MAC address gathering test [NETW-3006]
 - Added MAC OS support to inet and inet6 addresses test [NETW-3008]
 - Extended PHP expose_php test to support additional options [PHP-2372]
 - Improved LDAP test so it skips correctly on Mac OS AUTH-9238]
 - Bugfix: MySQL status check gave incorrect output [DBS-1804]

---------------------------------------------------------------------------------

Lynis 1.1.7 (2008-06-28)

 New:
 - New test: check for unused iptables rules [FIRE-4513]
 - New test: checking for dead and zombie processes [PROC-3612]
 - New test: checking for heavy IO waiting processes [PROC-3614]
 - Initial HP-UX support (untested)
 - Initial AIX support (untested)
 - Added iptables binary check
 - Added dig check, for DNS related tests
 - Added option --no-colors to remove all colors from screen output
 - Added option --reverse-colors for optimizing output at light backgrounds
   (Konsole, MacOS terminal etc)

 Changes:
 - Improved grpck test for SuSE [AUTH-9216]
 - Added dig availability check to DNS test [NETW-2704]
 - Bugfix: Fixed iptables test if the binary is not located in /sbin [FIRE-4512]
 - Bugfix: Improved yum-utils check to display suggestions correctly [PKGS-7384]
 - Bugfix: Fixed prequisits for grpck test [AUTH-9216]
 - Improved MySQL check [DBS-1804]
 - Changed color at chkconfig boot services test [BOOT-5177]
 - Added missing prequisits output to portaudit test [PKGS-7382]
 - Test output for FreeBSD mounts (UFS) improved [FILE-6329]
 - Extended OpenLDAP test to avoid finding itself in ps output [LDAP-2219]
 - Several tests have their warning reporting improved
 - Improved SuSE Linux detection
 - Improved syslog-ng detection
 - Adjusted README with link to online (extended) documentation

---------------------------------------------------------------------------------

Lynis 1.1.6 (2008-06-19)

 New:
 - New test: Check writable startup scripts [BOOT-5184]
 - New test: Syslog-NG consistency check [LOGG-2134]
 - New test: Check yum-utils package and scanning package database [PKGS-7384]
 - New test: Test for empty ruleset when iptables is loaded [FIRE-4512]
 - New test: Check for expired SSL certificates [CRYP-7902]
 - New test: Check for LDAP authentication support [AUTH-9238]
 - New test: Read available crontab/cron files [SCHD-7704]
 - New test: Query Solaris running zones [VIRT-1902]
 - New test: Check availability sudoers file for future tests [AUTH-9250]
 - New test: Query all home directories from passwd file [HOME-9302]
 - Syslog-NG support added (binary and version check)
 - Added new sections: Scheduling, Time and Synchronization, Virtualization

 Changes:
 - Extended several tests with suggestions and warnings
 - Extended GRUB test with GRUB2 check [BOOT-5121]
 - Extended iptables firewall test [FIRE-4511]
 - Fixed incorrect variable at Linux kernel config display [KRNL-5728]
 - Fixed display for file system test [FILE-6023]
 - Reassigned some ID's to match others in category
 - Improvement of several logging sections and profile options
 - Assigned ID to Ubuntu security update check
 - Assigned ID to pwck test for Solaris [AUTH-9230]
 - Assigned ID to FreeBSD unused distfiles check [PKGS-7348]
 - Assigned ID to RPM package query test [PKGS-7308]
 - Assigned ID to /tmp sticky bit test [FILE-6362]
 - Assigned ID to old temporary files check [FILE-6354]
 - Assigned ID to passwd ID 0 test [AUTH-9204]
 - Assigned ID to FreeBSD swap partitions [FILE-6332]
 - Assigned ID to FreeBSD swap mount options [FILE-6336]
 - Assigned ID to nameserver tests [NETW-2704 and NETW-2705]
 - Assigned ID to pf consistency check [FIRE-4520]
 - Assigned ID to Postfix configuration check [MAIL-8816]
 - Assigned ID to Postfix banner check [MAIL-8818]
 - Assigned ID to FreeBSD promiscuous port test [NETW-3014]
 - Assigned ID to file permissions check [FILE-7524]

---------------------------------------------------------------------------------

Lynis 1.1.5 (2008-06-10)

 New:
 - Assigned ID to Apache configuration file test [HTTP-6624]
 - Added pause_between_tests to profile file, to regulate the speed of a scan
 - Assigned ID to dpkg test and solved issue with colon in package names [PKG-7345]
 - Assigned ID to Solaris package test [PKG-7306]
 - New test: which gathers virtual hosts from Apache configuration files [HTTP-6626]
 - New test: read all loaded kernel modules (Linux) [KRNL-5726]
 - New test: query available FreeBSD network interfaces [NETW-3004]
 - New test: query available IPv4 and IPv6 network addresses [NETW-3008]
 - New test: for MAC addresses [NETW-3006]
 - New test: check if a Linux kernel configuration file is available [KRNL-5728]
 - New test: check boot services for Debian/Ubuntu [BOOT-5180]
 - Added Lynx, Nmap, Wget version to log file
 - Added support for Oracle enterprise Linux (Unbreakable Linux)
 - Added new function ReportWarning for better logging to report file

 Changes:
 - Improved FreeBSD pkg_info output, logging output and report data [PKG-7302]
 - Changed shell history file test, searching files with maxdepth 1 [HOME-9310]
 - Extended iptables test, to check Linux kernel configuration file [FIRE-4511]
 - Added report warning to promicuous test [NETW-3014]
 - Fixed yellow color when being used at text display
 - Several logging improvements and cleanups

---------------------------------------------------------------------------------

Lynis 1.1.4 (2008-05-31)

 New:
 - Added option to disable Lynis upgrade availability test (profile option)
 - Added new option --check-update, to display (update) information
 - Added stub for malware and file permissions database
 - New section 'LDAP Services'
 - Support for OpenLDAP added
 - Place holders for new tests are added
 - Default profile extended
 - [FILE-6023] Added test for Linux ext2, ext3, ext4 file systems
 - [BOOT-5155] Added check for YABOOT boot loader

 Changes:
 - [BANN-7119] Improved MOTD banner check
 - Improved Apache tests for SuSE and Debian systems
 - Debian/Ubuntu file tests improved
 - Extended man page

---------------------------------------------------------------------------------

Lynis 1.1.3 (2008-05-21)

 New:
 - Added security updates check for Fedora, RHEL 5.x, CentOS 5.x
 - Added Linux kernel version check
 - Most stable tests have an unique ID now
 - Skipped tests have their reason to skip logged
 - Added /etc/lynis/plugins to searchable plugin directory targets
 - Added Register() function, to handle tests, prerequisites and counter
 - Added new crypto tests
 - Added profile option "test_skip_always" to blacklist a specific test

 Changes:
 - Extended default profile location for FreeBSD
 - Extended accounting test to include pacct as well
 - Improved tests from categories: shells
 - Disabled skel tests
 - Several tests log their warnings into the report file now
 - Changed Linux default runlevel test
 - Extended man page

 Fixes:
 - Auditor name didn't get logged properly to report file.
 - Changed Debian/Ubuntu kernel update test, so it won't be tested on others
 - Exim test failed, due to using an incorrect variable name

---------------------------------------------------------------------------------

Lynis 1.1.2 (2008-05-11)

 New:
 - Added memory test for Solaris (tested on OpenSolaris)
 - Password file consistency check for Solaris
 - 32/64 bits OS mode check for Solaris
 - Added Slackware detection
 - Plugin support (see documentation)
 - Added monolithic/modular test for Linux kernels

 Changes:
 - Improved LILO test and removed double message
 - Fixed incorrect message when using --help parameter
 - Improved portaudit test (FreeBSD) to show unique packages only
 - Updated man page, FAQ, extended documention with plugin information
 - Added several php.ini file locations (MacOS X, OpenBSD, OpenSuSE)

 ** Special release notes [package/ports]: **
 - Added several default paths to check for usuable an INCLUDE directory. This
   should make packaging Lynis easier for downstream package providers.
 - When no profile is set, Lynis will check first /etc/lynis/default.prf,
   before setting default.prf (in current work directory) as profile to use.
 - New directory added to be installed for future versions: plugins

---------------------------------------------------------------------------------

Lynis 1.1.1 (2008-04-13)

 New:
 - Added Solaris package manager (pkginfo) to obtain installed packages
 - Added new option to profile to whitelist promiscuous interfaces (if_promisc)
 - Added vulnerable packages check for Debian/Ubuntu
 - Added package database consistency check for Debian/Ubuntu

 Changes:
 - Only perform boot.conf check for OpenBSD when running on i386
 - Changed RemovePIDFile to prevent incorrect file presence check (ie on OpenBSD)
 - Better OS detection and display output for Ubuntu systems
 - Improved text alignment (display) and logging
 - Commented out some of the default profile options
 - Updated FAQ, readme, man page

 Bug fixes:
 - Added missing space at OS detection function
 - Fixed /etc/group tests to ignore commented lines
 - Fixed sticky bit checking on /tmp, so it won't give incorrect results on
   SuSE/Debian systems

---------------------------------------------------------------------------------

Lynis 1.1.0 (2008-04-09)

 New:
 - Added test: default gateway (Linux/BSD)
 - Added boot tasks to report file (boottask)
 - Added vulnerable packages to report file (vulnerable_package)

 Changes:
 - Fixed some typos
 - Several improvements in log output
 - Changed display of operating system version (Linux)
 - Fixed PHP check

---------------------------------------------------------------------------------

Lynis 1.0.9 (2008-03-24)

 New:
 - Added --quiet option (currently not 100% quiet yet)
 - Added a spec file to the project page (see web site)
 - Added small INSTALL document

 Changes:
 - Changed check for PHP (php.ini location)
 - Added available shells from /etc/shells to report file
 - Updated man page
 - Fixed option in main help window for --man option
 - Code improvement, splitting up sections to seperated files

---------------------------------------------------------------------------------

Lynis 1.0.8 (2008-02-10)

 New:
 - Added pf filter rule test
 - Added our PID to PID file
 - Added warnings, real users, mount points, total tests to report file

 Changes:
 - Changed Apache configuration file test
 - Changed old temporary files check
 - Changed test to include ubuntu security repository
 - Moved UID check to avoid PID creation as non root user
 - Moved most functions to seperated files and several code cleanups
 - Improved logging output
 - Extended FreeBSD (Copyright file) test
 - Changed indentation for many tests
 - Changed some typos in notice/warning messages

---------------------------------------------------------------------------------

Lynis 1.0.7 (2008-01-28)

 New:
 - Test: UFS mount point check (FreeBSD)
 - Test: Check swap partitions (FreeBSD)
 - Test: find old files in /tmp
 - Test: check presence iptables
 - Test: check CPU PAE/NX support (Linux)
 - Added profile options check
 - Added option to skip Debian security repository check (profile option)
 - Support for Red Hat and CentOS

 Changes:
 - Changed report log location to /var/log instead of current work directory
 - Changed --help (and -h) to display general help, instead of man page
 - Renamed -man option to --man
 - Extended profile file (see default.prf)
 - Cleaned up code (rewritten several parts of static code to dynamic
   functions)
 - Added more comments to the program, for curious auditors, developers and
   users. Also regrouped parts of text and cleaned useless white spaces.
 - General program output improved (spaces, indentation)
 - Logging extended
 - Updated lynis.spec file (contrib)
 - FAQ and README files extended and updated

 Bugfixes:
 - Changed postfix banner check (thanks to Henk Bokhoven for reporting)
 - Extended skel directory test, with -A (ls) option to check hidden files
   (used with most Linux variants)

 Development:
 - Added new mirror
 - Updated year number in program and support files
 - Added new function Display, to use indentation within lines
 - Added function RemovePIDFile before some exit routines, to clean up PID file
 - Extracted profile support, parameter support to seperated files
 - Created file tests_ports_packages for Ports and Packages
 - Deleted lynis.spec file, since it was not working and will be rewritten later

---------------------------------------------------------------------------------

Lynis 1.0.6 (2007-12-26)

 New:
 - Added Solaris real users test
 - Added hostname check

 Changes:
 - Added chkconfig binary test and changed related services test
 - Added 'xargs' to version checks, to replace unwanted chars
 - Added more breaks to log file.
 - Added sorting to rpm/dpkg listings
 - FAQ extended

---------------------------------------------------------------------------------

Lynis 1.0.5 (2007-12-02)

 New:
 - Test: unique group names
 - Test: unique group IDs
 - Added check for rpm, chkrootkit and rkhunter binary
 - Added function to cleanup at manual interrupt (INT)
 - Support added to run Lynis as cronjob (--cronjob)
 - Fedora support added
 - Added umask 027, to tighten up file permissions

 Changes:
 - Changed FreeBSD ttys test
 - Changed grpck test, to operate in read-only mode
 - Changed Postfix test, to check for mail_name value as well
 - Changed GPL line in script which said GPL v2
 - Extended README
 - Show latest update version, if available, at the end of the screen output
 - Lots of code cleanup (see Development)
 - Some log improvements
 - Changed date notation in changelog to preferred European format (with dots
   instead of slashes)

 Development:
 - New function (ShowResult) to avoid repeating the same result line
   within the script for standard status values
 - Moved program consts to file (include/consts)
 - Moved functions to file (include/functions)
 - Moved OS detection to file (include/osdetection)
 - Added NEVERBREAK to avoid user input (cronjob support)

---------------------------------------------------------------------------------

Lynis 1.0.4 (2007-11-27)

 New:
 - Test: query real system users (FreeBSD/Linux)
 - Added PID file usage, to warn for unclean program states.
 - Added SSHd version test

 Changes:
 - Updated documentation
 - Changed sticky bit test (/tmp), to skip symlinks
 - Changed /etc/motd test, to skip symlinks
 - More code cleanup
 - Logging extended and improved
 - Screen output slightly changed

---------------------------------------------------------------------------------

Lynis 1.0.3 (2007-11-19)

 New:
 - Added check for sockstat
 - Test: added test for GRUB and password option
 - Test: query listening ports (sockstat)

 Changes:
 - Fixed NTPd check (bug)
 - Extended help for 'double installed package' check (BSD systems, pkg_info)
 - Extended Debian kernel update check
 - Improved OpenBSD support
 - Improved Linux specific detection support (Cobalt, CPU Builders, Debian,
   E-Smith, Slackware, SuSE/OpenSuSE, Turbo Linux, Yellowdog and others)
 - Improved screen output
 - Extended logging, with status/impact flags
 - [Bugfix] chkconfig test improved
 - [Bugfix] Fixed sticky bit test at Debian
 - Extended documentation and changelog file

---------------------------------------------------------------------------------

Lynis 1.0.2 (2007-11-15)

 New:
 - Test: Added check for NTP daemon or client
 - Test: file permissions (profile option)
 - Added -Q (--quick) parameter, to run the program without needing user
   input after every few sections.

 Changes:
 - Extended documentation (README file) and performed spell check
 - Improved screen output (colors, parameter handling and display)
 - Cleaned up source code and fixed some bad typos
 - Added much more delimiter lines to logfile
 - Added version numbers to logfile for used binaries/tools
 - Updated list of parameters within Lynis help

---------------------------------------------------------------------------------

Lynis 1.0.1 (2007-11-12)

 New:
 - Test: check Exim configuration file location
 - Test: added memory check (/proc/meminfo)
 - Test: run grpck to check group files (if available)
 - Test: boot option check for OpenBSD boot loader
 - Test: check if pf (Software: firewall) is active
 - Test: check LILO password
 - Test: check presence of old distfiles (FreeBSD)
 - Added check for binaries: httpd, kldstat, openssl, (s)locate
 - Added version check for: exim, openssl
 - Added -V (--version) parameter, to show version number
 - Added breaks between tests

 Changes:
 - [bug] Changed skel directory check
 - Fixed display Apache configuration file

---------------------------------------------------------------------------------

Lynis 1.0.0 (2007-11-08)

 New:
 - Support for CentOS (Tested: 5 Final)
 - Support for Debian (Tested: 4.0)
 - Support for FreeBSD (Tested: 6.2)
 - Support for Mac OS X (Tested: 10.4)
 - Test: Apache (ServerTokens option)
 - Test: PHP (expose_php option)
 - Test: Postfix (smtpd_banner option)
 - Test: check valid shells
 - Test: query pkg_info/RPM based systems
 - Test: query pkg_info for double installed packages
 - Test: query chkprintcap (FreeBSD)
 - Test: scan binary directories
 - Test: check administrator accounts
 - Test: check permissions /etc/motd
 - Test: read nameservers from /etc/resolv.conf
 - Test: query nameservers and test connectivity
 - Test: check promiscuous interfaces (FreeBSD)
 - Test: check sticky bit on /tmp directory
 - Test: check debian.org security brance in /etc/apt/sources.list
 - Test: check kernel update on Debian
 - Test: query default Linux run level
 - Test: query chkconfig to see which services start at boot
 - Test  /etc/COPYRIGHT banner check for FreeBSD
 - Support for program parameters
 - Builtin integrity checks
 - Color enhanced output for readability
 - Support for profiles/templates
 - Report file creation (for reporting/monitoring)
 - Extended logfile creation (with system suggestions)
 - Added lynis.spec file for RPM creation
 - Created project page at website
 - Added documentation (README), ToDo list (TODO)
 - Man page lynis(8)

 Changes:
 - No changes

 Bugfixes:
 - No bugfixes


==========================================================================================
  Lynis - Security Auditing and System Hardening for Linux and UNIX - https://cisofy.com
