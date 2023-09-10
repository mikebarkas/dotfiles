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
alias gcm='git checkout main'
alias gcd='git checkout develop'

alias gb='git branch'
alias gbv='git branch -vv'
alias gba='git branch -vva'
alias gr='git remote -v'

alias gc='git commit -v'
alias gcmsg='git commit -m'
alias gp='git push'
alias gcp='git cherry-pick'
alias gpom='git pull origin main'
alias gpod='git pull origin develop'

alias gs='git status -sb'
alias gsi='git status --ignored'
alias gd='git diff'

alias gl='git log --oneline --no-decorate -15'
alias gld='git log --oneline -15'
alias glg='git log --oneline --graph --decorate -12'
alias gll='git log --pretty=format:"%C(green)[%h]%Creset %gd %s %C(yellow)(%cr)%Creset %C(cyan)%cn%Creset" --graph'
alias gls='git log --oneline --graph --decorate --stat'
alias glp='git shortlog'


# Mercurial.
#alias hgs="hg status"
#alias hgp="hg push default"
#alias hgl='hg log -G'


# Python.
alias workoff='deactivate'
alias off='deactivate'
alias pyman='python manage.py'
alias hk='heroku'


# Kubernetes.
alias k='kubectl'
alias kg='kubectl get'

#
# Docker.
#
#alias start-docker="source /Applications/Docker/Docker\ Quickstart\ Terminal.app/Contents/Resources/Scripts/start.sh"
alias dk='docker'
alias dc='docker-compose'
alias dki='docker images'
#alias dm='docker-machine'

#
# DDEV
#
alias ddd='ddev drush'
alias ddc='ddev composer'
alias my-drupal-check='vendor/bin/drupal-check --memory-limit=1g -d'

#
# Terminus
#
alias t="terminus"
alias trd='terminus remote:drush'
alias dcs='phpcs --standard=Drupal,DrupalPractice --extensions='\''php,module,inc,install,test,profile,theme,js,css,info,txt'\'' --ignore='\''*.features.*.inc'\'''

#
# Ctags
#
alias ctags_python='ctags --fields=+l --languages=python --python-kinds=-iv -f ./tags '$(python -c "import os, sys; print(' '.join('{}'.format(d) for d in sys.path if os.path.isdir(d)))")
