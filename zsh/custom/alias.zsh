#
# Alias
#
alias vim='/usr/local/Cellar/vim/7.4.488/bin/vim'
alias gl9='glog -n9'
alias sv="_ vim"
alias v="vim"
alias v.="vim ."


# Mac
# Show/hide hidden files.
alias show="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"
# Hide/show desktop icons.
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Drupal
alias dcs="phpcs --standard=Drupal,DrupalPractice --extensions='php,module,inc,install,test,profile,theme,js,css,info,txt' --ignore='*.features.*.inc'"

#
# Config LESS output.
#
export LESS=-iXFR
