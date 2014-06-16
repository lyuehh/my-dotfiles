export PATH=/usr/local/share/npm/bin:$PATH
export PATH=~/bin:$PATH
export PATH=$PATH:'/Applications/Racket v5.3.6/bin'
export PATH=$PATH:'/Users/weiwei/bin/mongodb-osx-x86_64-2.4.8/bin'
export PATH=$PATH:/usr/local/share/resin-4.0.38/bin
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home
PATH=/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home/bin:$PATH
CALSSPATH=/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home/lib/dt.jar:/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home/lib/tools.jar
export JAVA_HOME
export PATH
export CALSSPATH

alias ub='ssh weiwei@10.237.113.11'
alias ub2='ssh weiwei@192.168.31.177'


alias node="node --harmony"
alias m="mvim"
alias locate="mdfind -name"
alias tree='tree -N'
alias vaz='vi ~/.zsh.after/alias.zsh'
alias javac='javac -J-Dfile.encoding=UTF-8'
alias gems="cd $GEM_HOME/gems/"
alias npms="cd /usr/local/share/npm/lib/node_modules"
alias pips="cd /Library/python/2.7/site-packages"

alias tfgo='tail -f /var/log/goagent.log'
alias tfs='tail -f /var/log/system.log'

alias gcam='git commit -a -m'
alias gpom='git pull origin master'
alias gpuom='git push origin master'
alias gcos='git checkout mergeSupport'
alias gpos='git pull origin mergeSupport'
alias gpuos='git push origin mergeSupport'
alias gpuogp='git push origin gh-pages'
alias gcom="git checkout master"

alias g2u="iconv -f gbk -t utf8"
alias u2g="iconv -f utf8 -t gbk"

alias lscleanup="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"
alias sniff="sudo ngrep -d 'en0' -t -q -W byline '^(GET|POST) ' 'tcp and port 80'"
alias sniff2="sudo ngrep -d 'en0' -t -q -W byline '^(GET|POST|PUT|DELETE) ' 'tcp and port 80'"
alias nw="/Applications/node-webkit.app/Contents/MacOS/node-webkit"

command -v md5sum > /dev/null || alias md5sum="md5"
command -v sha1sum > /dev/null || alias sha1sum="shasum"

alias rot13='tr a-zA-Z n-za-mN-ZA-M'
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

function gtrss() {
  env gtrs $1
  env gtrg $1
}

function myip() {
  ifconfig | grep inet | grep -v inet6 | grep -v 127 | awk '{print $2}'
  # ipconfig getifaddr en0
}

function json() {
	if [ -t 0 ]; then # argument
		python -mjson.tool <<< "$*" | pygmentize -l javascript
	else # pipe
		python -mjson.tool | pygmentize -l javascript
	fi
}

function escape() {
	printf "\\\x%s" $(printf "$@" | xxd -p -c1 -u)
	# print a newline unless we’re piping the output to another program
	if [ -t 1 ]; then
		echo # newline
	fi
}

# Decode \x{ABCD}-style Unicode escape sequences
function unidecode() {
	perl -e "binmode(STDOUT, ':utf8'); print \"$@\""
	# print a newline unless we’re piping the output to another program
	if [ -t 1 ]; then
		echo # newline
	fi
}

javar() {
    for f in "$@"; do
        javac "$f" && java "${f%.*}"
    done
}
pbhex() {
    ruby -KUe 'puts `pbpaste`.chars.map { |c| c.ord.to_s(16) }.join(" ")'
}
