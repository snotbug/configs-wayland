[[ $- != *i* ]] && return

export PS1='[\w]\n'

alias ls="ls -lhvAF --color=always"
alias rm="rm -i"
alias grep="grep --color=always"
alias shutdown="shutdown now"
