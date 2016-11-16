# /etc/profile

#Set our umask
umask 022

# Set our default path
PATH="/z/go/bin:/z/bin:/usr/bin:/usr/sbin:/usr/local/sbin:/usr/local/bin:"
PLAN9=/0/plan9port export PLAN9
PATH=$PATH:$PLAN9/bin export PATH
#export PATH
export GOPATH=/z
export GOROOT=/z/go
export GOARCH=amd64
export GOOS=linux


# Load profiles from /etc/profile.d
if test -d /etc/profile.d/; then
	for profile in /etc/profile.d/*.sh; do
		test -r "$profile" && . "$profile"
	done
	unset profile
fi

# Source global bash config
if test "$PS1" && test "$BASH" && test -r /etc/bash.bashrc; then
	. /etc/bash.bashrc
fi

# Termcap is outdated, old, and crusty, kill it.
unset TERMCAP

# Man is much better than us at figuring this out
unset MANPATH
