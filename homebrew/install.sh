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

# Update Homebrew
update_homebrew() {
	echo "Updating Homebrew"
	echo "${YELLOW}> brew update"
	brew update
	echo "${RESET}"
	echo " "
}

# Install software and applications via Brewfile
install_software_packages() {
	echo "Installing Homebrew Packages"
	echo "${YELLOW}> brew bundle"
	brew bundle
	echo "${RESET}"
	echo " "
}

# Verify the state of rbenv installation
run_rbenv_doc() {
	echo "verifying the state of rbenv installation"
	echo "${YELLOW}"
	curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-doctor | bash
	echo "${RESET}"
}

install_homebrew
update_homebrew
install_software_packages
run_rbenv_doc
