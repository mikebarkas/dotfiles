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
    '.testone',
    '.testtwo',
]

os.chdir(os.path.expanduser('~'))

# Backup existing files and link to dotfiles directory.
for dotfile in dotfiles:
    print 'Checking for existing ' + color.cyan + dotfile + color.end

    if os.path.islink(dotfile):
        print color.yellow + 'File already linked.' + color.end
        continue

    if os.path.isfile(dotfile):
        print color.yellow + 'File found.. making backup of existing file.' + color.end
        os.rename(dotfile, dotfile + '-original')

    print 'Symlinking ' + color.green + dotfile + color.end + ' in home directory..'
    os.symlink('/tmp/' + dotfile[1:], dotfile)

    print ''

