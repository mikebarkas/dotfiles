#!/usr/bin/python

import os


# Define ansi color.
class color:
    red = '\033[1;31m'
    green = '\033[1;32m'
    yellow = '\033[1;33m'
    cyan = '\033[1;36m'
    end = '\033[00m'

dotfiles = [
    ('git',  '.gitconfig'),
    ('git',  '.gitignore_global'),
    ('hg',   '.hgrc'),
    ('mutt', '.muttrc'),
    ('npm',  '.npmrc'),
    ('tmux', '.tmux.conf'),
    ('vim',  '.vimrc'),
    ('zsh',  '.zshrc'),
]

home_directory = os.path.expanduser('~')
os.chdir(home_directory)

# Backup existing files and link to dotfiles directory.
for directory, dotfile in dotfiles:
    print 'Checking for existing ' + color.cyan + dotfile + color.end + ' file.'

    if os.path.islink(dotfile):
        print color.yellow + 'File already linked.' + color.end
        print ''
        continue

    if os.path.isfile(dotfile):
        print color.yellow + 'File found.. making backup of existing file.' + color.end
        os.rename(dotfile, dotfile + '-original')

    print 'Symlinking ' + color.green + dotfile + color.end + ' in home directory..'
    os.symlink(home_directory + '/.dotfiles/' + directory + '/' + dotfile[1:], dotfile)

    print ''

