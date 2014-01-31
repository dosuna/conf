# (http://en.wikipedia.org/wiki/Unicode_symbols)
symbol="λ"
function pause(){
 read -p "$*"
}
function precmd() {
 MYCMD=$(set -o|grep 'emacs.*on' >/dev/null 2>&1 && echo 'ϵ'|| echo 'υ');
 export PS1="[\!][${MYCMD}] \w\n${symbol} » ";
}
export PS2="$(pause 'Press [Enter] key to continue...')"
export PERLBREW_MANPATH="/Users/user/perl5/perlbrew/perls/perl-5.19.4/man"
export PERLBREW_PATH="/Users/user/perl5/perlbrew/bin:/Users/user/perl5/perlbrew/perls/perl-5.19.4/bin"
export PERLBREW_PERL="perl-5.19.4"
export PERLBREW_ROOT="/Users/user/perl5/perlbrew"
export PERLBREW_VERSION="0.66"

#export PROMPT_COMMAND="$(set -o | grep emacs.*on >/dev/null 2>&1 && echo 'E'|| echo '')"
export PROMPT_COMMAND=(precmd)
export PATH=$PERLBREW_PATH:$HOME/bin:/usr/local/cuda/bin:/usr/local/bin:$PATH
export NODE_PATH="/usr/local/lib/node_modules:${NODE_PATH}"
export DYLD_LIBRARY_PATH=/usr/local/cuda/lib:$DYLD_LIBRARY_PATH
export DEPENDPATH=/usr/local/cuda/lib:$DEPENDPATH
export INCLUDEPATH=/usr/local/cuda/lib:$INCLUDEPATH
export GEMPATH=`gem env gemdir`
export VIMDIR=/usr/share/vim73
export INPUTRC=~/.inputrc
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1
if [ `uname` == "Darwin" ]; then
  export LSCOLORS=ExGxFxDxCxHxHxCbCeEbEb
  export LC_CTYPE=en_US.utf-8
  export LC_ALL=en_US.utf-8
else
  alias ls='ls --color=auto'
fi
# hack to get ppc out of that thing
export ARCHFLAGS="-arch i386 -arch x86_64"

## perlbrew
## source ~/perl5/perlbrew/etc/bashrc

## jython
export CLASSPATH=~/bin/edittwiki/lib/edittwiki.jar
export EDITTWIKI=~/bin/edittwiki/edittwiki.cfg
export JYTHON_HOME=/usr/local/Cellar/jython/2.5.3/libexec/bin
export EDITOR=/usr/local/bin/vim

## pyenv
eval "$(pyenv init -)"

## 
# bash completion
#if [ -f $(brew --prefix)/share/bash-completion/bash_completion ]; then
#  . $(brew --prefix)/share/bash-completion/bash_completion
#fi
source /usr/local/share/bash-completion/completions/todo 

# source ~/.bashrc
[ -n ~/.bashrc ] && . ~/.bashrc
