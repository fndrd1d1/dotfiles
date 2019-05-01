# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gianu"

# history navigation
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward
bindkey -M vicmd 'k' history-beginning-search-backward
bindkey -M vicmd 'l' history-beginning-search-forward
#bindkey '^[[A' up-line-or-search
#bindkey '^[[B' down-line-or-search

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git svn colored-man-pages taskwarrior vi-mode)

#history-substring-search 
setopt HIST_IGNORE_ALL_DUPS

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH=/cygdrive/c/Program\ Files/Git/bin:$PATH
export PATH=/cygdrive/c/Program\ Files/Git/cmd:$PATH
# export MANPATH="/usr/local/man:$MANPATH"
export PATH=/Users/Dietrich/anaconda/bin/:$PATH

source $ZSH/oh-my-zsh.sh

# TmuxP
source tmuxp.zsh
export DISABLE_AUTO_TITLE='true'
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#alias vim='/usr/local/Cellar/vim/7.4.1147/bin/vim'
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"
#alias bcompare="/Applications/Beyond\ Compare.app/Contents/MacOS/bcomp"

if [ -f "$HOME/.bashrc" ]; then
    . "$HOME/.bashrc"
fi


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export PATH="/usr/local/opt/llvm/bin:$PATH"
