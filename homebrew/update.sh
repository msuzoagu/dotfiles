#!/bin/sh
#
# Update Homebrew as well as install
# software packages via Brewfile
#
# Brewfile: file where you define softwares
# and applications you want to install

# Setup colors to be used to display information in terminal
RESET=$(tput sgr0)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)

set -e

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

update_homebrew
install_software_packages
run_rbenv_doc
