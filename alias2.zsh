# Add yourself some shortcuts to projects you often work on
# Example:
#
# brainstormr=/Users/robbyrussell/Projects/development/planetargon/brainstormr
#

# YADR support
alias yav='yadr vim-add-plugin'
alias yuv='yadr vim-update-plugins'
alias yip='yadr init-plugins'

# PS
alias ps="ps aux"
alias psg="ps aux | grep "
alias psr='ps aux | grep ruby'
alias psn='ps aux | grep nginx'

# Show human friendly numbers and colors
alias df='df -h'
alias ll='ls -alGh'
alias ls='ls -Gh'
alias du='du -h -d 2'

# show me files matching "ls grep"
alias lsg='ll | grep -i'
alias cls='clear'
alias gz='tar -zcvf'
alias ka9='killall -9'
alias k9='kill -9'

# Forward port 80 to 3000
alias portforward='sudo ipfw add 1000 forward 127.0.0.1,3000 ip from any to any 80 in'

# other 
alias update='sudo softwareupdate -i -a; brew update; brew upgrade;sudo npm update npm -g;sudo npm update -g;gem update'
alias locate='mdfind -name'
alias tree='tree -N'

# git alias
alias gcam="git commit -a -m"
alias gm="git merge --no-ff"
alias gpt="git push --tags"
alias gp="git push"
alias grh="git reset --hard"
alias gb="git branch"
alias gba="git branch -a"
alias gcob="git checkout -b"
alias gco="git checkout"
alias gcp="git cherry-pick"
alias gl="git log --pretty='format:%Cgreen%h%Creset %an - %s' --graph"
alias gpom="git pull origin master"
alias gpuom="git push origin master"
alias gpod="git pull origin develop"
alias gpuod="git push origin develop"
alias gpoe="git pull origin release"
alias gpuoe="git push origin release"
alias gt="git tag"
alias gf='git fetch'
alias gd='git diff'
alias gsm='git submodule'
alias gsmi='git submodule init'
alias gsmu='git submodule update'
alias gr='git rebase'
alias gra='git rebase --abort'
alias ggrc='git rebase --continue'
alias gbi='git rebase --interactive'

alias ppm='cd ~/work/project/python_mail'
alias pwps='cd ~/work/project/webpy_sohu'

