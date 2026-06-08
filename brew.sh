#!/usr/bin/env bash

# Exit with msg
function error_exit() {
	echo "$1" 1>&2
	exit 1
}

# Use brew to install dependecies
function setup_brew() {
	if [ "$(uname)" == "Darwin" ]; then
		
		if ! command brew -v &> /dev/null; then
		  # Install homebrew
		  sh brew/install.sh
		fi

		eval "$(/opt/homebrew/bin/brew shellenv)"

		# Install brew packages
		# Let's see if everything is allright
		if brew doctor; then
			brew bundle brew/Brewfile
		else
			error_exit "Brew didn't install correct"
		fi

		# Install apps with the help of cask
		sh brew/cask.sh
	fi
}

setup_brew