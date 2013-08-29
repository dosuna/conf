function precmd() {
 MYCMD=$(set -o|grep 'emacs.*on' >/dev/null 2>&1 && echo 'ϵ'|| echo 'υ');
 export PS1="[\!][${MYCMD}]λ» ";
}
export PROMPT_COMMAND=precmd
export PATH=/usr/local/cuda/bin:/usr/local/bin:$PATH:$HOME/bin
export DYLD_LIBRARY_PATH=/usr/local/cuda/lib:$DYLD_LIBRARY_PATH
export DEPENDPATH=/usr/local/cuda/lib:$DEPENDPATH
export INCLUDEPATH=/usr/local/cuda/lib:$INCLUDEPATH
export GEMPATH=`gem env gemdir`
source ~/.bashrc
export INPUTRC=~/.inputrc
