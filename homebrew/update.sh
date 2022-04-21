#!/bin/sh
#
# Homebrew Update
#

# setup colors to be used to display information in terminal
RESET=$(tput sgr0)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)

# Update Homebrew
update_homebrew() {
	echo "Updating Homebrew"
	echo "${YELLOW}> brew update"
	brew update
	echo "${RESET}"
	echo " "
}

update_homebrew