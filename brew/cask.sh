# Install native apps
brew tap phinze/homebrew-cask
brew install brew-cask

function installcask() {
	brew cask install "${@}" 2> /dev/null
}

installcask dropbox
installcask google-chrome
installcask google-chrome-canary
installcask imagealpha
installcask imageoptim
installcask iterm2
installcask sourcetree
installcask spotify
installcask sublime-text
installcask textmate
installcask the-unarchiver
installcask transmission
installcask virtualbox
installcask vlc
installcask xquartz
