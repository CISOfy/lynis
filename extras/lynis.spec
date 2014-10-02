#################################################################################
#
# Lynis spec file
# -----------------
#
# Usage:
# - Adjust version number (Version:)
# - Check if you have the directories in your home directory (or adjust topdir)
# - rpmbuild -ba lynis.spec
#
# If RPM building fails, check the required tools to build packages.
#
#################################################################################
#
# (c) 2014 Michael Boelen
#
# Website:   http://cisofy.com/
#
#################################################################################

# Build in home directory of the user
%define _topdir         %{getenv:HOME}/lynis-build/rpmbuild
%define _includedir     /usr/share/lynis/include
%define _pluginsdir     /usr/share/lynis/plugins
%define _dbdir          /usr/share/lynis/db
%define _bindir         /usr/bin

Summary:                Security and system auditing tool.
Name:                   lynis
Version:                1.6.2
Release:                1
License:                GPL
Group:                  Applications/System
Source:                 lynis-%{version}.tar.gz
BuildRoot:              /tmp/lynis-root
URL:                    http://cisofy.com/
Vendor:                 CISOfy / Michael Boelen
Packager:               Michael Boelen <michael@rootkit.nl>
BuildArch:              noarch

%description
Lynis is a security tool to audit and harden Unix/Linux based systems. It scans a
system and provides the user with suggestion and warnings regarding taken security
measures. Examples include:
     - Security enhancements
     - Logging and auditing options
     - Banner identification
     - Software availability
     - Missing security patches

Lynis is released as a GPLv3 licensed project and free for everyone to use.

See http://cisofy.com for a full description and documentation.

%prep
[ "$RPM_BUILD_ROOT" != "/" ] && rm -rf "$RPM_BUILD_ROOT"
mkdir $RPM_BUILD_ROOT

# Make directory with our name, instead of with version
%setup -n lynis
#%setup

#%patch

%build

%install
# Install profile
install -d ${RPM_BUILD_ROOT}/etc/lynis
install default.prf ${RPM_BUILD_ROOT}/etc/lynis
# Install binary
install -d ${RPM_BUILD_ROOT}/%{_bindir}
install lynis ${RPM_BUILD_ROOT}/%{_bindir}
# Install man page
install -d ${RPM_BUILD_ROOT}/%{_mandir}/man8
install lynis.8 ${RPM_BUILD_ROOT}/%{_mandir}/man8
# Install functions/includes
install -d ${RPM_BUILD_ROOT}%{_includedir}
install include/* ${RPM_BUILD_ROOT}%{_includedir}
# Install plugins
install -d ${RPM_BUILD_ROOT}%{_pluginsdir}
install plugins/* ${RPM_BUILD_ROOT}%{_pluginsdir}
# Install database files
install -d ${RPM_BUILD_ROOT}%{_dbdir}
install db/* ${RPM_BUILD_ROOT}%{_dbdir}


# Patch default paths (not required for 1.1.2+)
#sed -i -e 's#INCLUDEDIR="include"#INCLUDEDIR="%{_includedir}"#g' ${RPM_BUILD_ROOT}/usr/bin/lynis
#sed -i -e 's#PROFILE="default.prf"#PROFILE="/etc/lynis/default.prf"#g' ${RPM_BUILD_ROOT}/usr/bin/lynis

%clean
[ "$RPM_BUILD_ROOT" != "/" ] && rm -rf "$RPM_BUILD_ROOT"

%files
%defattr(644,root,root,755)
# Binaries
%attr(755, root, root) %{_bindir}/lynis
# Man page and docs
%doc CHANGELOG FAQ LICENSE README
%doc %{_mandir}/man8/lynis.8.gz
# Default profile
/etc/lynis/default.prf
# Databases, functions, plugins
%{_dbdir}/*
%{_includedir}/*
%{_pluginsdir}/*
#%attr(644, root, root) %{_dbdir}/*
#%attr(644, root, root) %{_includedir}/*
#%attr(644, root, root) %{_plugindir}
#%attr(644, root, root) %{_plugindir}/*

%changelog
* Sun Sep 14 2014 Michael Boelen - 1.1.8-1
- Changed permissions with regards of pentest option

* Tue Dec 10 2013 Michael Boelen - 1.1.7-1
- Adjusted website and referenced in documentation

* Wed Dec 04 2013 Michael Boelen - 1.1.6-1
- Adjusted version number, removed TODO file and adjusted permissions

* Mon Jun 16 2008 Michael Boelen - 1.1.5-1
- Fixed database dir variable and setup section

* Sat May 31 2008 Michael Boelen - 1.1.4-1
- Added _dbdir

* Sun May 11 2008 Michael Boelen - 1.1.2-1
- Added _pluginsdir, disabled patches

* Sat Mar 08 2008 Michael Boelen - 1.0.8-1
- initial .spec file

# The End
