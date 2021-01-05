# Custom Aliases
setopt complete_aliases

alias c='clear'
alias ~='cd ~'
alias ..='cd ../'
alias ...='cd ../../'
alias .2='cd ../../'
alias .3='cd ../../../'
alias .4='cd ../../../../'

alias checkout='git checkout'
alias master='git checkout master'
alias main='git checkout main'
alias pull='git pull'
alias push='git push'
alias fetch='git fetch'
alias newbranch='git checkout -b'
alias branch='git branch'
alias branches='git branch --list'
alias clone="git clone"

function switch() { 
    changed_files=$(git status --porcelain --untracked-files | wc -l)
    [ $changed_files -gt 0 ] && git stash --include-untracked
    git checkout "$@"
}
compdef _git switch=git-checkout

# cd into currently open Finder window
cdf() {
	target=`osascript -e 'tell application "Finder" to if (count of Finder windows) > 0 then get POSIX path of (target of front Finder window as text)'`
	if [ "$target" != "" ]; then
		cd "$target";
	else
		echo 'No window found' >&2
	fi
}

alias open='open -a Finder ./'

export VISUAL=code
export EDITOR="$VISUAL"
