#!/bin/bash

# -------------------------------------
# Set up sym links to dot files.
# -------------------------------------


# -------------------------------------
# Script functions.
# -------------------------------------
print_message() {
  echo -e "\033[1;32m"$1"\033[00m";
}

print_warning() {
  echo -e "\033[1;33m"$1"\033[00m";
}

print_error() {
  echo -e "\033[1;32m"$1"\033[00m";
}

# -------------------------------------
# Vim.
# -------------------------------------
print_message "Checking for existing .vimrc file..."
if [ -f ~/.vimrc ]; then
  print_warning ".vimrc found. Creating a backup."
  mv ~/.vimrc ~/.vimrc-original
  ln -s -v ~/.dotfiles/vim/vimrc ~/.vimrc
  print_message ".vimrc successfully linked to dotfiles."
fi

# -------------------------------------
# Tmux.
# -------------------------------------
print_message "Checking for existing .tmux.conf file..."
if [ -f ~/.tmux.conf ]; then
  print_warning ".tmux.conf found. Creating a backup."
  mv ~/.tmux.conf ~/.tmux.conf-original
  ln -s -v ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
  print_message ".tmux.conf successfully linked to dotfiles."
fi

#
# Git.
#
#l -s ~/.gitconfig ~/.dotfiles/git/gitconfig
#l -s ~/.gitignore_global ~/.dotfiles/git/gitignore_global

#
# Zsh.
#
#l -s ~/.oh-my-zsh/custom/alias.zsh ~/.dotfiles/zsh/custom/alias.zsh

#
# Mutt.
#
#l -s ~/.muttrc ~/.dotfiles/mutt/muttrc
