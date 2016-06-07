#!/usr/bin/python

import os


# Define ansi color.
class color:
    red = '\033[1;31m'
    green = '\033[1;32m'
    yellow = '\033[1;33m'
    cyan = '\033[1;36m'
    end = '\033[00m'

rcfiles = [
    '.testone',
    '.testtwo',
]

os.chdir(os.path.expanduser('~'))

# Backup existing files and link to rcfiles directory.
for rcfile in rcfiles:
    print 'Checking for existing ' + color.cyan + rcfile + color.end + ' file.'

    if os.path.islink(rcfile):
        print color.yellow + 'File already linked.' + color.end
        print ''
        continue

    if os.path.isfile(rcfile):
        print color.yellow + 'File found.. making backup of existing file.' + color.end
        os.rename(rcfile, rcfile + '-original')

    print 'Symlinking ' + color.green + rcfile + color.end + ' in home directory..'
    os.symlink('/tmp/' + rcfile[1:], rcfile)

    print ''

