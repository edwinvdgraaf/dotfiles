# Install native apps
brew tap phinze/homebrew-cask
brew install brew-cask

# Required for sublime-text3
brew tap caskroom/versions

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
installcask sublime-text3
installcask textmate
installcask the-unarchiver
installcask transmission
installcask virtualbox
installcask vlc
installcask xquartz


sublimeDir="~/Library/Application\ Support/Sublime\ Text\ 3"

# Move sublime settings

# install package control
echo "Installing package control and syncing settings"
mkdir ~/Library/Application\ Support/Sublime\ Text\ 3/
mkdir ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages
mkdir ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/
mkdir ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/

wget -O ~/Library/Application\ Support/Sublime\ Text\ 3/Installed\ Packages/Package\ Control.sublime-package "https://sublime.wbond.net/Package%20Control.sublime-package" 
# move sublime settings
cp -R ../assets/sublime/ ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
# move sublime package control settings
