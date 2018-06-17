#!/bin/sh

#brew update
brew install imagemagick tree wget ack
#brew install enca
#brew install macvim jpeginfo ngrep
brew install the_silver_searcher terminal-notifier
brew install bfg trash
brew install jq parallel
brew install git git-extras git-lfs
brew install coreutils gawk gnu-sed
brew install zsh hub gist ssh-copy-id
brew install go lua nvm astyle
brew install reattach-to-user-namespace tmux

brew install fasd zsh-syntax-highlighting zsh-autosuggestions zsh-completions zsh-history-substring-search

#brew tap phinze/homebrew-cask
#brew install brew-cask
#brew install caskroom/cask/brew-cask

#brew tap homebrew/versions
#brew install mysql55


#brew cask fetch iterm2 skim alfred
#brew cask fetch sublime-text textexpander textmate the-unarchiver xscope
#brew cask fetch slate appcleaner
#brew cask fetch caffeine selfControl
#brwe cask fetch smcfancontrol
#brew cask fetch vagrant

brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
defaults write com.apple.finder QLEnableTextSelection -bool true && killall Finder
brew cask install colorpicker-developer colorpicker-hex
qlmanage -r

