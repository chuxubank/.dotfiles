#!/bin/zsh

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Emacs Client
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🐾
# @raycast.packageName Editor

# Documentation:
# @raycast.description Open Emacs Client
# @raycast.author Misaka
# @raycast.authorURL https://github.com/chuxubank

source ~/.zshrc
proxy enable && emacsclient -cn -a=""
