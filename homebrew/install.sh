#!/bin/sh
#
# Homebrew Installation
#

# setup colors to be used to display information in terminal
# https://unix.stackexchange.com/questions/269077/tput-setaf-color-table-how-to-determine-color-codes
RESET=$(tput sgr0)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)

set -e

# check for homebrew
install_homebrew() {
	if test ! $(which brew)
	then 
		echo "${YELLOW}> Installing Homebrew${GREEN}"

		# Install the correct homebrew for each OS type
		if test "$(uname)" = "Darwin"			
		then
			ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
		elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
		then
			ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
		fi
	else
		echo "${YELLOW}> Homebrew already installed${RESET}"
		echo "${YELLOW}> Check for correct configuration${RESET}"
	fi 
}

install_homebrew
