#!/bin/bash

reporoot=$(readlink -f $(dirname $0))

[[ -f install-lib ]] || curl -sSOL https://raw.githubusercontent.com/roxell/local-inst-lib/master/install-lib
source install-lib

install_files=(
    "$HOME/.xinitrc:${reporoot}/xinitrc"
    "$HOME/.Xdefaults:${reporoot}/Xdefaults"
    "$HOME/.Xdefaults.zenbook:${reporoot}/Xdefaults.zenbook"
    "$HOME/.Xdefaults.xps13:${reporoot}/Xdefaults.xps13"
    "$HOME/.Xsession:${reporoot}/xinitrc"
    "$HOME/.urxvt:${reporoot}/urxvt"
    "$HOME/.i3:${reporoot}/i3"
    "$HOME/.i3status.conf:${reporoot}/i3status.conf"
)

create_symlink

###############################################################################
# vim: set ts=4 sw=4 sts=4 et                                                 :
