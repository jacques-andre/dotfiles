# Path to your oh-my-zsh installation.
export ZSH="/home/jacques/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# enable vim mode
bindkey -v 
# backward search
bindkey '^R' history-incremental-search-backward


# include aliases
source $HOME/.aliases
export PATH=$HOME/scripts:$PATH

export VISUAL=nvim;
export EDITOR=nvim;

# https://askubuntu.com/questions/881949/ugly-color-for-directories-in-gnome-terminal
LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"
export PATH="$HOME/.local/bin:$PATH"

# https://stackoverflow.com/questions/20628918/cannot-download-gopath-not-set
export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin

