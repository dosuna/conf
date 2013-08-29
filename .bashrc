force_color_prompt
alias documents='cd ~/Documents'
alias downloads='cd ~/Downloads'
alias desktop='cd ~/Desktop'
alias hist='history'

alias lsd='ls -l|grep "^d"'
alias .='open .'
alias ..='cd ..'

alias vi='vim'

# calculator
=(){ echo $(($*));}

#☰☰☰☰☰☰☰☰☰☰
##  ls functions
##  ============
unalias ls
function ls() {
  command ls -hCF "$@"|sed 's/\ /\\\ /g';
}
# cd to dir then ls
function cdl { cd $1; ls $1; }
# multiterm grep
alias mgrep="grep -i -E '$1.*$2'"
