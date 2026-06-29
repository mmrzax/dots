
### Added by Zinit's installer
if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/zinit-annex-as-monitor \
    zdharma-continuum/zinit-annex-bin-gem-node \
    zdharma-continuum/zinit-annex-patch-dl \
    zdharma-continuum/zinit-annex-rust

### End of Zinit's installer chunk

# ── Plugins ───────────────────────────────────────────────────────────────────
zinit ice wait lucid
zinit light zsh-users/zsh-autosuggestions

zinit ice wait lucid
zinit light zsh-users/zsh-syntax-highlighting

zinit ice wait lucid
zinit light zsh-users/zsh-completions

zinit ice wait lucid
zinit light Aloxaf/fzf-tab

zinit ice wait lucid atload'
    bindkey "^[[A" history-substring-search-up
    bindkey "^[[B" history-substring-search-down
    bindkey -M vicmd "k" history-substring-search-up
    bindkey -M vicmd "j" history-substring-search-down
'
zinit light zsh-users/zsh-history-substring-search

zinit ice wait lucid
zinit light MichaelAquilina/zsh-you-should-use

# ── Completions ───────────────────────────────────────────────────────────────
autoload -Uz compinit
compinit

# ── History ───────────────────────────────────────────────────────────────────
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt SHARE_HISTORY
setopt APPEND_HISTORY
setopt HIST_FIND_NO_DUPS

# ── Prompt ────────────────────────────────────────────────────────────────────
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# ── Aliases ───────────────────────────────────────────────────────────────────
alias myip="curl ipinfo.io/ip"
alias vi="nvim"
alias l="lsd -lahtr"
alias dot="/usr/bin/git --git-dir=$HOME/.dots/ --work-tree=$HOME"
alias d="dot"
alias ds="dot status -s"
alias da="dot add"
alias dc="dot commit"
alias dp="dot push"
alias dl="dot pull"
alias dlo="dot log --oneline --graph --decorate"

# ── Git Aliases ───────────────────────────────────────────────────────────────
alias g="git"
alias gs="git status -s"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gl="git pull"
alias glo="git log --oneline --graph --decorate"

# ── Exports ───────────────────────────────────────────────────────────────────
export PF_INFO="ascii title os host kernel uptime pkgs memory shell editor wm"
export PF_ASCII="catppuccin"
export BAT_THEME="rose-pine-moon"
