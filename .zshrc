export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

#DISABLE_AUTO_TITLE="true"

#ENABLE_CORRECTION="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# nvm
#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# alacritty
#fpath+=${ZDOTDIR:-~}/.zsh_functions

# aliases
alias mongo="mongod --dbpath=$HOME/Documents/apps/mongodb/mongodb-data"
alias d="aria2c"
alias myip="curl checkip.dyndns.org"
alias vi="nvim"
alias l="lsd -lahtr"

# dotfiles
alias dot="/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME"

export EDITOR=nvim
export NODE_PATH=`which node`

export PF_INFO="ascii title os host kernel uptime pkgs memory shell editor wm"

export LANG=en_US.UTF-8
export XDG_CURRENT_DESKTOP=sway
export GOPATH="$HOME/go"
export GOROOT="/usr/lib/go"
export PATH="$HOME/bin:$HOME/.local/bin:$GOROOT/bin:$GOPATH/bin:$PATH"
export MOZ_ENABLE_WAYLAND=1
export GRIM_DEFAULT_DIR=$HOME/Pictures/shot
# export JUPYTERLAB_DIR=$HOME/.local/share/jupyter/lab
export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/gcr/ssh

source $HOME/.obsidian

export BAT_THEME=gruvbox-dark
export PICO_SDK_PATH=/home/mmrza/Files/build/github/pico-sdk
