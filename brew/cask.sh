function installcask() {
	brew install --cask "${@}" 2> /dev/null
}

installcask google-chrome-canary
installcask alfred
installcask imageoptim
installcask sourcetree
installcask spotify
installcask sublime-text3
installcask vlc
installcask textmate
