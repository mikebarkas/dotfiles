#
# Alias.
#

# Vim.
alias vim='/usr/local/Cellar/vim/7.4.1016/bin/vim'
alias sv="sudo vim"
alias v="vim"
alias v.="vim ."
alias v,="vim ."

# Git.
alias gs="git status -sb"
alias gb="git branch -vv"
alias gl9='glog -n9'

# Tmux.
alias tls="tmux ls"
alias tat="tmux a -t"

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
alias vgs="vagrant ssh"
alias vgh="vagrant halt"
alias vgrp="vagrant reload --provision"
alias vgd="vagrant destroy"
alias vgbl="vagrant box list"

# Mac.
# Show/hide hidden files.
alias show="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"
# Hide/show desktop icons.
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Drupal.
alias dcs="phpcs --standard=Drupal,DrupalPractice --extensions='php,module,inc,install,test,profile,theme,js,css,info,txt' --ignore='*.features.*.inc'"

#
# Config LESS output.
#
export LESS=-iXFR
