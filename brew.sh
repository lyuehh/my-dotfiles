#!/bin/sh

brew update
brew install git-extras imagemagick tree wget ack
#brew install enca
brew install macvim jpeginfo ngrep
brew install the_silver_searcher
brew install terminal-notifier
brew install gist ssh-copy-id
brew install astyle
brew install jq
brew install gnupg gpg-agent pass

#brew tap phinze/homebrew-cask
#brew install brew-cask
brew install caskroom/cask/brew-cask

brew tap homebrew/versions
#brew install mysql55

brew cask fetch iterm2 skim alfred
brew cask fetch sublime-text textexpander textmate the-unarchiver xscope
brew cask fetch slate appcleaner
brew cask fetch caffeine selfControl
brwe cask fetch smcfancontrol
#brew cask fetch vagrant

brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
defaults write com.apple.finder QLEnableTextSelection -bool true && killall Finder
brew cask install colorpicker-developer colorpicker-hex
qlmanage -r

# ls -l /usr/local/Library/Formula | grep phinze-cask | awk '{print $9}' | for evil_symlink in $(cat -); do rm -v /usr/local/Library/Formula/$evil_symlink; done
