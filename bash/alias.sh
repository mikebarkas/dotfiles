# ------------------------------------
# Alias.
# ------------------------------------

# System.
alias l='ls -lGFhi'
alias ll='ls -AlGFhi'
alias lll='ls -AlGFhi | less'
alias lt='ls -A1t'
alias ..='cd ..'
alias ...='cd ../..'


# Vim.
alias sv="sudo vim"
alias v="vim"
alias v.="vim ."
alias v,="vim ."


# Tmux.
alias tls="tmux ls"
alias tat="tmux a -t"


# Git.
alias g='git'
alias ga='git add'

alias gco='git checkout'
alias gcm='git checkout master'

alias gb='git branch -vv'
alias gba='git branch -vva'
alias gr='git remote -v'

alias gc='git commit -v'
alias gcmsg='git commit -m'

alias gs='git status -sb'
alias gcount='git shortlog -sn'
alias gd='git diff'
