#!/bin/sh

#########################################################################
#
# Builds Lynis distribution
#
# Usage: this script creates Lynis builds
#
# *** NOTE ***
# This script is not fully functional yet, several options like digital
# signing, RPM/DEB package creation are missing.
#
#########################################################################
#
# Options:
    
    # Umask used when creating files/directories
    OPTION_UMASK="027"

    # Directory name used to create package related directories (like /usr/local/include/lynis)
    OPTION_PACKAGE_DIRNAME="lynis"

    # Binary to test
    OPTION_BINARY_FILE="../lynis"    

#
#########################################################################
#
# Functions:

    # Clean temporary files up
    CleanUp()
      {
        if [ ! ${TMPDIR} = "" -a -d ${TMPDIR} ]; then
            rm -rf ${TMPDIR}
        fi
      }

#
#########################################################################
#

    # Clean files up if we get interrupted
    trap CleanUp INT

#
#########################################################################
#

# Set umask
    echo -n "- Setting umask to ${OPTION_UMASK}                                 "
    umask ${OPTION_UMASK}
    if [ $? -eq 0 ]; then
        echo "OK"
      else
        echo "BAD"
        exit 1
    fi

#=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

    # Build root
    echo -n "- Creating BUILDROOT                                   "
    TMPDIR=`mktemp -d /tmp/lynis-BUILDROOT.XXXX`
    if [ $? -eq 0 ]; then
        echo "OK"
        echo "    BUILDROOT: ${TMPDIR}"
      else
        echo "BAD"
        exit 1
    fi

#=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

    # Test script for errors
    echo -n "- Test Lynis script                                    "
    
    # Is file there?
    if [ ! -f ${OPTION_BINARY_FILE} ]; then echo "BAD (can't find ${OPTION_BINARY_FILE})"; exit 1; fi

    # Check script
    FIND=`sh -n ${OPTION_BINARY_FILE} ; echo $?`
    if [ $FIND -eq 0 ]; then
        echo "OK"
      else
        echo "BAD"
    fi

#=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

    # Create SHA1 hashes
    echo -n "- Create SHA1 hashes                                   "
    SHA1HASH_LYNIS=`grep -v '^#' ${OPTION_BINARY_FILE} | sha1`
    echo "DONE"
    echo "    Lynis (SHA1): ${SHA1HASH_LYNIS}"

    # Add hashes to script
    echo -n "- Injecting SHA1 hash into Lynis script                "
    echo "-NOT DONE-"

#=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

    echo -n "- Cleaning up OpenBSD package build... " 
    if [ -f openbsd/+CONTENTS ]; then rm openbsd/+CONTENTS; fi
    echo "DONE"
    OPENBSD_CONTENTS="openbsd/+CONTENTS"

#=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

    echo -n "- Creating MD5 hashes..."
    PACKAGE_LIST_FILES=`cat files.dat | grep "^file:" | cut -d ':' -f3`

    for I in ${PACKAGE_LIST_FILES}; do
    
      echo -n "${I} "
      #FULLNAME=`cat files.dat | grep ":file:include: 
      #echo "${FULLNAME}" >> ${OPENBSD_CONTENTS}
      echo "${I}" >> ${OPENBSD_CONTENTS}
      FILE="../${I}"
      MD5HASH=`md5 -q ${FILE}`
      echo "@md5 ${MD5HASH}" >> ${OPENBSD_CONTENTS}
      echo "@size 0000" >> ${OPENBSD_CONTENTS}
    done
    echo ""

#=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

    echo -n "- Cleaning up... "

    # Clean up our mess
    CleanUp
    
    echo "DONE"    

#=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
    
# The End!

