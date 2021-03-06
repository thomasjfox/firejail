# Persistent global definitions go here
include /etc/firejail/globals.local

# This file is overwritten during software install.
# Persistent customizations should go in a .local file.
include /etc/firejail/mcabber.local

# mcabber profile
noblacklist ${HOME}/.mcabber
noblacklist ${HOME}/.mcabberrc

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-programs.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc

caps.drop all
netfilter
nonewprivs
noroot
protocol inet,inet6
seccomp

private-bin mcabber
private-etc null
private-dev
shell none
nosound
