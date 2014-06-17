#! /usr/bin/env zsh

#source .zshrc.platform.pre

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="pure"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git gitignore history vi-mode history-substring-search-patched zsh-syntax-highlighting)

source .zshrc.platform.plugins

source $ZSH/oh-my-zsh.sh

#source .zshrc.platform.post
source .zshrc.platform

# zsh-related aliases
alias zshconfig="$EDITOR ~/.zshrc"
alias ohmyzsh="$EDITOR ~/.oh-my-zsh"

# Side-by-side editing/comparison                                               
alias diff2='diff -y'                                                           
alias vim2='vim -O'
