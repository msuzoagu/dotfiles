#!/bin/sh

#-------------------------------------------------------------------------------
# Homebrew Installation
#
# setup colors to be used to display information in terminal
# https://unix.stackexchange.com/questions/269077/tput-setaf-color-table-how-to-determine-color-codes
#-------------------------------------------------------------------------------
RESET=$(tput sgr0)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)

set -e

#-------------------------------------------------------------------------------
# Check for homebrew
#-------------------------------------------------------------------------------
install_homebrew() {
    if ! command -v brew >/dev/null 2>&1; then
        echo "${YELLOW}> Installing Homebrew${GREEN}"

        if [ "$(uname)" = "Darwin" ]; then
            /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

            # --- 2026 CRITICAL ADDITION ---
            # Inject Homebrew into the CURRENT shell session immediately
            if [ -f /opt/homebrew/bin/brew ]; then
                eval "$(/opt/homebrew/bin/brew shellenv)"
            elif [ -f /usr/local/bin/brew ]; then
                eval "$(/usr/local/bin/brew shellenv)"
            fi
            # ------------------------------

        elif [ "$(expr substr $(uname -s) 1 5)" = "Linux" ]; then
            /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)"
        fi
    else
        echo "${YELLOW}> Homebrew already installed${RESET}"
    fi
}

#-------------------------------------------------------------------------------
# Update Homebrew
#-------------------------------------------------------------------------------
update_homebrew() {
	echo "Updating Homebrew"
	eval "$(/opt/homebrew/bin/brew shellenv)"
	echo "${YELLOW}> brew update"
	brew update
	echo "${RESET}"
	echo " "
}

#-------------------------------------------------------------------------------
# Install software and applications via Brewfile
#-------------------------------------------------------------------------------
install_software_packages() {
	echo "Installing Homebrew Packages"
	echo "${YELLOW}> brew bundle"
	brew bundle
	echo "${RESET}"
	echo " "
}

#-------------------------------------------------------------------------------
# Verify the state of rbenv installation
# run_rbenv_doc() {
# 	echo "verifying the state of rbenv installation"
# 	echo "${YELLOW}"
# 	curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-doctor | bash
# 	echo "${RESET}"
# }
#-------------------------------------------------------------------------------


install_homebrew
update_homebrew
install_software_packages
# run_rbenv_doc
