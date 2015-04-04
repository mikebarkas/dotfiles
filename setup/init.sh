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
fi
ln -s -v ~/.dotfiles/vim/vimrc ~/.vimrc
print_message ".vimrc successfully linked to dotfiles."

# -------------------------------------
# Tmux.
# -------------------------------------
print_message "Checking for existing .tmux.conf file..."
if [ -f ~/.tmux.conf ]; then
  print_warning ".tmux.conf found. Creating a backup."
  mv ~/.tmux.conf ~/.tmux.conf-original
fi
ln -s -v ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
print_message ".tmux.conf successfully linked to dotfiles."

# -------------------------------------
# Git.
# -------------------------------------
print_message "Checking for some existing git config files..."
if [ -f ~/.gitconfig ]; then
  print_warning ".gitconfig file found. Creating a backup."
  mv ~/.gitconfig ~/.gitconfig-original
fi
ln -s -v ~/.dotfiles/git/.gitconfig ~/.gitconfig
print_message ".gitconfig successfully linked to dotfiles."

print_message "Checking for existing git ignore files..."
if [ -f ~/.gitignore_global ]; then
  print_warning ".gitignore_global file found. Creating a backup."
  mv ~/.gitignore_global ~/.gitignore_global-original
fi
ln -s -v ~/.dotfiles/git/.gitignore_global ~/.gitignore_global
print_message ".gitignore_global successfully linked to dotfiles."

# -------------------------------------
# Zsh.
# -------------------------------------
print_message "Checking for existing Zsh custom alais files..."
if [ -f ~/.oh-my-zsh/custom/alias.zsh ]; then
  print_warning "Custom Zsh alias file found. Creating a backup."
  mv ~/.oh-my-zsh/custom/alias.zsh ~/.oh-my-zsh/custom/alias.zsh-original
fi
ln -s -v ~/.dotfiles/zsh/custom/alias.zsh ~/.oh-my-zsh/custom/alias.zsh
print_message "Cusomt Zsh alias file successfully linked to dotfiles."

#
# Mutt.
#
#l -s ~/.muttrc ~/.dotfiles/mutt/muttrc
