### Setup Symlinks Script

This script first checks for an existing configuration file.

If existing file found, create a backup of the file and symlinks a new configration file to the dotfile version.

#### Usage

Run this _init.sh_ script.

`setup/./init.sh`

#### Result Example

Your original backed up configuration file.<br/>
`~/.vimrc-original`

New symlink configuration file.<br/>
`~/.vimrc -> ~/.dotfiles/vim/vimrc`
