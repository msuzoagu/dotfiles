#!/bin/sh
#
# Update Homebrew as well as install
# software packages via Brewfile
#
# Brewfile : A file where you define softwares and applications you want to install

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

# Install software and applications via Brewfile
install_software_packages() {
	echo "Installing Homebrew Packages"
	echo "${YELLOW}> brew bundle"
	brew bundle
	echo "${RESET}"
	echo " "
}

update_homebrew
install_software_packages