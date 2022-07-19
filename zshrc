# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#  ▄███████▄     ▄████████    ▄█    █▄
# ██▀     ▄██   ███    ███   ███    ███
#       ▄███▀   ███    █▀    ███    ███
#  ▀█▀▄███▀▄▄   ███         ▄███▄▄▄▄███▄▄
#   ▄███▀   ▀ ▀███████████ ▀▀███▀▀▀▀███▀
# ▄███▀                ███   ███    ███
# ███▄     ▄█    ▄█    ███   ███    ███
#  ▀████████▀  ▄████████▀    ███    █▀

# ##################################################################################################
# Default settings
# ##################################################################################################

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Stripe stuff
autoload -Uz compinit; compinit
autoload -Uz bashcompinit; bashcompinit
source ~/.bashrc
source ~/.bash_profile
eval "$(nodenv init -)"
compdef _git stripe-git=git # this line specifically will fix git autocompletion

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"
VIM_THEME="dracula"


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
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

ZSH_DISABLE_COMPFIX=true

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# ##################################################################################################
# Aliases
# ##################################################################################################

# common commands
alias cl="clear"
alias vi="vim"
# alias ls="gls --color -lh --group-directories-first"
alias ls="exa -lh --group-directories-first"
# alias la="gls --color -lha --group-directories-first"
alias la="exa -lha --group-directories-first"

alias editzsh="sudo vim ~/.zshrc"
alias sourcezsh="source ~/.zshrc"

# tmux
alias tm="tmux"
alias tls="tmux ls"
alias tnew="tmux new -s"
alias ta="tmux a"
alias tat="tmux a -t"
alias tkill="tmux kill-session -t"
alias tses='tmux new -As $(basename $PWD | tr . -)'

# npm
alias ni="npm install"
alias nid="npm install --save-dev"
alias nun="npm uninstall"
alias ns="npm start"
alias nt="npm test"
alias nr="npm run"

# git
alias gitvis="git log --graph --oneline --all --decorate"
alias gitignored="git ls-files -v|grep '^h'"
alias gitexcluded="cat ./.git/info/exclude"
alias gitold="git branch --sort=committerdate | xargs echo"
alias gitdb="git for-each-ref --format '%(refname:short)' refs/heads | grep -v \"master\|main\" | xargs git branch -D"

# paths
alias dotfiles="cd ~/.dotfiles"
alias dev="cd ~/dev"

alias stripe="cd ~/stripe"
alias payserver="cd ~/stripe/pay-server"
alias uppsala="cd ~/stripe/zoolander/uppsala"
alias zoolander="cd ~/stripe/zoolander"
alias lz="~/stripe/zoolander/dev/ij launch zoolander"
alias zooproto="~/stripe/zoolander/dev/format-all"
alias zoobuildfiles="~/stripe/zoolander/dev/regen-proto-build-files"

alias hubfwd="(trap \"kill 0\" SIGINT; ssh -v -NL  10080:hubble-srv-kube.service.envoy:10080 \"\$(pay --host-type mydata-standard show-host)\" & ssh -v -N -R \"5442:localhost:10080\" \"\$(pay --host-type qa-mydev show-host)\")"

# colorized cat
alias cat="ccat"

#alias docker rm exited container
alias rmcontainers="docker ps -aq --no-trunc -f status=exited | xargs docker rm"

# use agignore
alias ag="ag --path-to-agignore ~/.agignore"

# grep
alias -g G='| grep'

# use the correct term for ssh
alias ssh="TERM=xterm-256color ssh"

# recursively delete `.DS_Store` files from current folder
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# put removed files in trash
alias rm="trash"

# ##################################################################################################
# Functions
# ##################################################################################################

# cd to the root of a git repository
cdr() {
  cd "$(git rev-parse --show-toplevel)"
}

# make git faster in big repos
#https://stackoverflow.com/a/68238145
function git_prompt_info() {
    ref=$(git-branch-name -q -h 12 -b 64) || return
    echo "${ZSH_THEME_GIT_PROMPT_PREFIX}${ref}${ZSH_THEME_GIT_PROMPT_CLEAN}${ZSH_THEME_GIT_PROMPT_SUFFIX}"
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
export PATH="/usr/local/opt/avr-gcc@8/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export PATH="$PATH:$HOME/stripe/work/exe"
export PATH="$PATH:$HOME/stripe/.cargo/bin"
