# Edwin’s dotfiles

While being heavily inspired on all example dotfiles configurations on GitHub, I
decided to start my own to understand it better.Back in the days I've used zsh
for auto suggestions, jumping with the help of z and powerline10k. With the help
of oh-my-zsh and the great agnoster theme I had a pretty usefull machine.

However in 2022 I got a new machine (after 6y), and I faced two problems. Over
the years I didnt nicely backported my settings and over time my oh-my-zsh setup
became quite slowish. Don't get me wrong I had cool things, but at the same time
my requirements got smaller. And tooling filled the gab where back in the days
oh-my-zsh was required to help so the setup has been simplified.

## Installation

    git clone <repo>

### Dotfiles

Dotfiles are symlinked from here. The setup bash and git for the moment.

./symlink_dotfiles.sh

### Mac OSX

For OSX extra brew files are supplied to setup an development environment
quickly. It's advisable at this point to make sure Xcode and Xcode developer
tools are installed a priori the installation of the brew packages. Xcode can be
easily installed from the App Store, the developers tools can be installed by
running `xcode-select --install`. Afterwards run:

    ./brew.sh

To setup macOS default

    ./macos.sh

## About

These dotfiles bring the following near you:

0. Symlink dotfiles
1. Install homebrew & packages
2. MacOS defaults

## Thanks to…

- @ptb and
  [his _OS X Lion Setup_ repository](https://github.com/ptb/Mac-OS-X-Lion-Setup)
- [Ben Alman](http://benalman.com/) and his
  [dotfiles repository](https://github.com/cowboy/dotfiles)
- [Chris Gerke](http://www.randomsquared.com/) and his
  [tutorial on creating an OS X SOE master image](http://chris-gerke.blogspot.com/2012/04/mac-osx-soe-master-image-day-7.html) +
  [_Insta_ repository](https://github.com/cgerke/Insta)
- [Cãtãlin Mariş](https://github.com/alrra) and his
  [dotfiles repository](https://github.com/alrra/dotfiles)
- [Gianni Chiappetta](http://gf3.ca/) for sharing his
  [amazing collection of dotfiles](https://github.com/gf3/dotfiles)
- [Jan Moesen](http://jan.moesen.nu/) and his
  [ancient `.bash_profile`](https://gist.github.com/1156154) +
  [shiny _tilde_ repository](https://github.com/janmoesen/tilde)
- [Lauri ‘Lri’ Ranta](http://lri.me/) for sharing
  [loads of hidden preferences](http://osxnotes.net/defaults.html)
- [Matijs Brinkhuis](http://hotfusion.nl/) and his
  [dotfiles repository](https://github.com/matijs/dotfiles)
- [Nicolas Gallagher](http://nicolasgallagher.com/) and his
  [dotfiles repository](https://github.com/necolas/dotfiles)
- [Sindre Sorhus](http://sindresorhus.com/)
- [Tom Ryder](http://blog.sanctum.geek.nz/) and his
  [dotfiles repository](https://github.com/tejr/dotfiles)
- [Paul Irish](https://github.com/paulirish/dotfiles)
- [Zach Holman](https://github.com/holman/dotfiles)
