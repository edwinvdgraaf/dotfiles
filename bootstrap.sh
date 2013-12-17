# Exit with msg
function errorExit() {
	echo "$1" 1>&2
	exit 1
}

function copyDotFiles() {
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
		--exclude "README" --exclude "brew/" --exclude "shell/" -av --no-perms . ~
	source ~/.zshrc
}

# Setup zsh
sh shell/init.sh

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	copyDotFiles
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		copyDotFiles
	fi
fi
unset copyDotFiles

# Install homebrew
sh brew/install.sh

# Install brew packages
# Let's see if everything is allright
if brew doctor; then
	brew bundle brew/Brewfile
else
	error_exit "Brew didn't install correct"
fi

