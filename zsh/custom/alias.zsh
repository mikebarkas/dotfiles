#
# Alias
#
# alias vim='/usr/local/Cellar/vim/7.4.488/bin/vim'

#
# Mac
#

# Show/hide hidden files.
alias show="defaults write com.apple.Finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.Finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show desktop icons.
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

#
# Config LESS output.
#
export LESS=-iXFR
