alias locate="mdfind -name"
alias tree='tree -N'
alias vaz='vi ~/.zsh.after/alias.zsh'

function gtrss() {
  env gtrs $1
  env gtrg $1
}

alias tfgo='tail -f /var/log/goagent.log'

alias gcam='git commit -a -m'
alias gpom='git pull origin master'
alias gpuom='git push origin master'
alias gcos='git checkout mergeSupport'
alias gpos='git pull origin mergeSupport'
alias gpuos='git push origin mergeSupport'


function myip() {
  ifconfig | grep inet | grep -v inet6 | grep -v 127 | awk '{print $2}'
  # ipconfig getifaddr en0
}

alias lscleanup="/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user && killall Finder"
alias sniff="sudo ngrep -d 'en0' -t '^(GET|POST) ' 'tcp and port 80'"

command -v md5sum > /dev/null || alias md5sum="md5"
command -v sha1sum > /dev/null || alias sha1sum="shasum"

alias rot13='tr a-zA-Z n-za-mN-ZA-M'

alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

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

