#!/usr/bin/env bash
# Sets reasonable macOS defaults. Basically
# this setups up things how I like in macOS
#
# 
# The original idea (and a couple settings) 
# were grabbed from:
# https://github.com/mathiasbynens/dotfiles/blob/master/.macos
#
#
# Run ./set-defaults.sh and you'll be good to go.
#
# References:
#   https://pawelgrzybek.com/change-macos-user-preferences-via-command-line/
set -e 

err() {
	echo "ERROR: $@" >&2
	return $?
}

log() {
	if ! test "$1" -eq "$1"; then 
		err "Expected an integer as first argument, got $1"
	fi 


	local depth="${1:-0}"
	shift 1
	local prefix=''


	local first=1 increment=1
	for i in $(seq ${first} ${increment} ${depth} 2>/dev/null); do 
		if [[ "${i}" -eq "${depth}" ]]; then
			prefix+='|- '
		else 
			prefix+='   '
		fi
	done

	echo "$prefix$@"
	return $?
}

log 0 'Editing application/system defaults...'

log 1 'System Preferences'

log 2 'General'
log 3 'Appearance: dark mode'
defaults write -globalDomain AppleInterfaceStyle Dark

log 1 'Finder'
log 2 'Show the ~/Library folder'
chflags nohidden ~/Library
log 2 'Show hidden dot files'
defaults write com.apple.finder AppleShowAllFiles -string YES
log 2 "Always open everything in Finder's list view. This is important."
defaults write com.apple.Finder FXPreferredViewStyle Nlsv
log 2 "Disable .DS_STORE files in network folders"
defaults write com.apple.desktopservices DSDontWriteNetworkStores true

