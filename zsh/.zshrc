export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="jacques"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# enable vim mode
bindkey -v 

# backward search
bindkey '^R' history-incremental-search-backward

# include aliases
export PATH=$HOME/scripts:$PATH
source $HOME/.aliases

# vim editor
export VISUAL=nvim;
export EDITOR=nvim;

# https://askubuntu.com/questions/881949/ugly-color-for-directories-in-gnome-terminal
LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"
export PATH="$HOME/.local/bin:$PATH"

# https://stackoverflow.com/questions/20628918/cannot-download-gopath-not-set
export GOPATH=~/go
export PATH=$PATH:$GOPATH/bin
#
# cargo path
export PATH="$HOME/.cargo/bin:$PATH"



# Load Angular CLI autocompletion.
source <(ng completion script)
export TERM=xterm-256color
