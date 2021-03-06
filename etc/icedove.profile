# Persistent global definitions go here
include /etc/firejail/globals.local

# This file is overwritten during software install.
# Persistent customizations should go in a .local file.
include /etc/firejail/icedove.local

# Firejail profile for Mozilla Thunderbird (Icedove in Debian Stable)
# Users have icedove set to open a browser by clicking a link in an email
# We are not allowed to blacklist browser-specific directories

noblacklist ~/.gnupg
mkdir ~/.gnupg
whitelist ~/.gnupg

noblacklist ~/.icedove
mkdir ~/.icedove
whitelist ~/.icedove

noblacklist ~/.cache/icedove
mkdir ~/.cache/icedove
whitelist ~/.cache/icedove

# allow browsers
ignore private-tmp
include /etc/firejail/firefox.profile
#include /etc/firejail/chromium.profile - chromium runs as suid!

