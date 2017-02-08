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
alias gap='git add -p'

alias gco='git checkout'
alias gcm='git checkout master'

alias gb='git branch -vv'
alias gba='git branch -vva'
alias gr='git remote -v'

alias gc='git commit -v'
alias gcmsg='git commit -m'
alias gp='git push'

alias gs='git status -sb'
alias gd='git diff'

alias gl='git log --oneline --graph --decorate -12'
alias gll='git log --pretty=format:"%C(green)[%h]%Creset %gd %s %C(yellow)(%cr)%Creset %C(cyan)%cn%Creset" --graph'
alias gls='git log --oneline --graph --decorate --stat'
alias glp='git shortlog'


# Mercurial.
alias hgs="hg status"
alias hgp="hg push default"
alias hgl='hg log -G'


# Python.
alias workoff='deactivate'
alias off='deactivate'
alias pyman='python manage.py'
alias hk='heroku'


# Postgres.
alias pg_start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pg_stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias pg_status='pg_ctl -D /usr/local/var/postgres status'


# Vagrant.
alias vg="vagrant"
alias vgu="vagrant up"
alias vgs="vagrant status"
alias vgss="vagrant ssh"
alias vgh="vagrant halt"
alias vgp="vagrant provision"
alias vgrp="vagrant reload --provision"
alias vgd="vagrant destroy"
alias vgbl="vagrant box list"

#
# Docker.
#
#alias start-docker="source /Applications/Docker/Docker\ Quickstart\ Terminal.app/Contents/Resources/Scripts/start.sh"
alias dc='docker-compose'
alias dm='docker-machine'
