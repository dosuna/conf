export HISTSIZE=9999
export HISTFILESIZE=999999
export HISTIGNORE="&:[ ]*:exit"
shopt -s histappend
shopt -s cmdhist
stty stop ""
alias documents='cd ~/Documents;pwd'
alias downloads='cd ~/Downloads;pwd'
alias desktop='cd ~/Desktop;pwd'
alias hist='history'

alias dir="find . -print0 | xargs -0"
alias lsd='ls -l|grep "^d"'
alias cp='cp -v'
alias .='open .'
alias ..='cd ..'

alias s='open -a "Sublime Text"'
alias t="todo.sh -cNtvv"
complete -F _todo t

alias vi='vim'
alias vp='vim "`pbpaste`"'


##
##  ls functions
##  ===============
unalias ls
function ls() {
  command ls -hCF "$@"|sed 's/\ /\\\ /g';
}
# cd to dir then ls
function cdl { cd $1; ls $1; }
# multiterm grep
function mgrep(){
  arg1=$1;shift
  arg2=$1;shift
  grep -RiE '$arg1.*$arg2' $*;
}

##
##  misc utilities
##
# Useful command for stripping whitespace
remove_trailing_whitespace() {
    find . -name $* -exec sed -i '' -e's/[[:space:]]*$//' {} \;

}

# date and time
function gettime() {
TIME="date +%H:%M:%S"
eval "$TIME"
}

# simple timer
alias timer='time cat'

# calculator
=(){ echo $(($*));}

# ping google
alias pgo='ping google'


# mkdir # mkdir and cd into it
function mkcd() { mkdir "$1" && cd "$1"; }

## perlbrew
## source ~/perl5/perlbrew/etc/bashrc
export PERLBREW_MANPATH="/Users/user/perl5/perlbrew/perls/perl-5.19.4/man"
export PERLBREW_PATH="/Users/user/perl5/perlbrew/bin:/Users/user/perl5/perlbrew/perls/perl-5.19.4/bin"
export PERLBREW_PERL="perl-5.19.4"
export PERLBREW_ROOT="/Users/user/perl5/perlbrew"
export PERLBREW_VERSION="0.66"


eval $(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib)


