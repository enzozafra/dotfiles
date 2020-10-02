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

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"
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
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

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

# tmux
alias tm="tmux"
alias tls="tmux ls"
alias tnew="tmux new -s"
alias ta="tmux a"
alias tat="tmux a -t"
alias tkill="tmux kill-session -t"
alias tses='tmux new -As $(basename $PWD | tr . -)'

# aws work stuff
alias aws-l="eiamCli login"
alias aws-c="eiamCli aws_creds -c -n cui-preprod"
alias aws-s="eiamCli aws_ssh -c -n cui-preprod"
alias awsdlbuildtda="_awsdlbuildtda"
alias awsdlbuildsbseg="_awsdlbuildsbseg"
alias awslsbuild="aws s3 ls s3://conversation-designer-builds/0f273de7-dc27-4948-a8b2-44c1b415726e/c9e04584-911d-42cb-b960-455f767383bb/"
alias awsdlmetadata="_awsdlmetadata"

alias runorch="/Users/lzafra/dev/cui-orchestration/mvnw -pl app clean spring-boot:run"
alias runorchdev="/Users/lzafra/dev/cui-orchestration/mvnw -pl app clean spring-boot:run -Dspring-boot.run.profiles=dev"

# npm
alias ni="npm install"
alias nid="npm install --save-dev"
alias nun="npm uninstall"
alias ns="npm start"
alias nt="npm test"
alias nr="npm run"

# git
alias gitvis="git log --graph --oneline --all --decorate"
alias nobootstrap="git update-index --assume-unchanged conversation-orchestration/src/main/resources/bootstrap.yml"
alias yesbootstrap="git update-index --no-assume-unchanged conversation-orchestration/src/main/resources/bootstrap.yml"
alias gaorch="git add app/src/main/java app/src/main/kotlin app/src/test/java app/src/test/kotlin test/overwatch-test"


# paths
alias proj="cd ~/Documents/Projects"
alias d="cd ~/.dotfiles"
alias portfolio="cd ~/Documents/Projects/portfolio"
alias cfs="cd ~/dev/conversation-framework-service"
alias cfsc="cd ~/dev/conversation-framework-service-config"
alias cds="cd ~/dev/cui-designer-service"
alias cdui="cd ~/dev/cui-conversation-designer-v2-ui"
alias cui="cd ~/dev/conversation-ui"
alias cuio="cd ~/dev/cui-orchestration"
alias cuiad="cd ~/dev/cuiad"
alias cuim="cd ~/dev/cui-metadata"
alias cfw="cd ~/dev/conversation-framework-web"
alias cfv2="cd ~/dev/conversation-framework-service-v2"
alias tda="cd ~/dev/turbotax-digital-assistant"
alias tdacontent="cd ~/Documents/work/s3/builds/tda/current"

alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome --remote-debugging-port=9222"

# colorized cat
alias cat="ccat"

#alias docker rm exited container
alias rmcontainers="docker ps -aq --no-trunc -f status=exited | xargs docker rm"

#youtube download
alias ytdl="youtube-dl --audio-format mp3 -x "

# use python2.7
# alias python=/usr/local/bin/python2.7

# use python3.7
# alias python=/usr/local/bin/python3.7

# use agignore
alias ag="ag --path-to-agignore ~/.agignore"

# grep
alias -g G='| grep'

# use the correct term for ssh
alias ssh="TERM=xterm-256color ssh"

# recursively delete `.DS_Store` files from current folder
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# serve current directory on port 8080
alias serve="python -m SimpleHTTPServer"

# put removed files in trash
alias rm="trash"

# get current ip
alias getip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"

stty erase ^H
stty erase '^?'

# ##################################################################################################
# Functions
# ##################################################################################################

# cd to the root of a git repository
cdr() {
  cd "$(git rev-parse --show-toplevel)"
}


function _awsdlbuildtda() {
	aws s3 cp s3://conversation-designer-builds-preprod/0f273de7-dc27-4948-a8b2-44c1b415726e/c9e04584-911d-42cb-b960-455f767383bb/"$1" ~/Documents/work/s3/builds/tda/"$1" --recursive
}

function _awsdlmetadata() {
	aws s3 cp s3://conversation-designer-metadata-preprod ~/Documents/work/s3/metadata --recursive
}

function _awsdlbuildsbseg() {
	aws s3 sync s3://conversation-designer-builds-preprod/0f273de7-dc27-4948-a8b2-44c1b415726e/9ee422b3-8d39-4d70-971e-ea4d56f2b019/"$1" ~/Documents/work/s3/builds/sbseg_iva/"$1"
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
