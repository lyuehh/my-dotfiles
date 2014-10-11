#!/bin/sh

brew update
brew install git-extras node imagemagick tree wget ack
#brew install enca
brew install macvim jpeginfo ngrep
brew install the_silver_searcher
brew install terminal-notifier
brew install gist
brew install astyle
brew install jq

brew tap phinze/homebrew-cask
brew install brew-cask

brew tap homebrew/versions
#brew install mysql55

brew cask fetch iterm2
brew cask fetch alfred app-cleaner  sublime-text textexpander textmate2 the-unarchiver xscope
brew cask fetch google-chrome bit-torrent-sync slate
#brew cask fetch vagrant

brew cask fetch qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql suspicious-package
brew cask fetch colorpicker-developer colorpicker-hex
qlmanage -r

# ls -l /usr/local/Library/Formula | grep phinze-cask | awk '{print $9}' | for evil_symlink in $(cat -); do rm -v /usr/local/Library/Formula/$evil_symlink; done
