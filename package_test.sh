#!/bin/sh

# refreshing 
zypper ref -s

# Install sap pattern
zypper --non-interactive in -t pattern sap_server

# Install packages
zypper --non-interactive in lsb5 \
rpm-build \
libjpeg62 \
libpng12-0 \
libstdc++-devel \
libgthread-2_0-0-32bit \
libaio1-32bit \
libopenssl1_0_0-32bit \
libidn11

# Patching

zypper ref -s
zypper --non-interactive -t patch
zypper --non-interactive -t patch

# Packages after patching

zypper --non-interactive in compat-libgcrypt11 \
libopenssl0_9_8

#etc.
