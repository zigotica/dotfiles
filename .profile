#!/usr/bin/env bash

# Bash Git completion
gitcompletionpath="/usr/local/Cellar/git/2.7.4/etc/bash_completion.d/git-completion.bash"
[[ -s $gitcompletionpath ]] && source $gitcompletionpath

# Append to the Bash history file, rather than overwriting it
shopt -s histappend;