#!/bin/sh

brew update
brew install git-extras io node imagemagick tree wget ack
brew install enca
brew install macvim jpeginfo ngrep
brew install the_silver_searcher
brew install terminal-notifier
brew install gist
brew install astyle

brew tap phinze/homebrew-cask
brew install brew-cask
brew tap homebrew/versions
brew install mysql55

brew cask install iterm2
brew cask install alfred app-cleaner mesa-sqlite sublime-text textexpander textmate2 the-unarchiver xscope
brew cask install google-chrome bit-torrent-sync bettertouchtool

# ls -l /usr/local/Library/Formula | grep phinze-cask | awk '{print $9}' | for evil_symlink in $(cat -); do rm -v /usr/local/Library/Formula/$evil_symlink; done
