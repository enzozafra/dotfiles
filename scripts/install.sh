#!/bin/bash

# suppress welcome message
if [ ! -f $HOME/.hushlogin ]; then
  touch $HOME/.hushlogin
fi

# Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Taps
brew tap thoughtbot/formulae

# Installs
brew install 'coreutils'
brew install 'git'
brew install 'mas'
brew install 'node'
brew install 'npm'
brew install 'vim'
brew install 'zsh-autosuggestions'
brew install 'zsh'
brew install 'yarn'
brew install 'tmux'
brew install 'rcm'
brew install 'exa'
brew install 'trash'
brew install zsh-syntax-highlighting
brew install 'awscli'
brew install 'maven'
brew install 'gradle'
brew install 'cask'
brew install 'tomcat'
brew install 'nvm'
brew install 'ccat'

brew install homebrew/cask          
brew tap homebrew/cask

# Casks
brew install --appdir="/Applications" 'iterm2'
brew install --appdir="/Applications" 'visual-studio-code'
brew install --appdir="/Applications" 'google-chrome'
brew install --appdir="/Applications" 'alfred'
brew install --appdir="/Applications" 'spotify'
brew install --appdir="/Applications" 'marta'
brew install --appdir="/Applications" 'caffeine'
brew install --appdir="/Applications" 'intellij-idea'
brew install --appdir="/Applications" 'notion'
brew install --appdir="/Applications" 'postman'
brew install --appdir="/Applications" 'zoomus'
brew install --appdir="/Applications" 'clipy'
brew install --appdir="/Applications" 'dozer'

# cleanup
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*

# update terminal
tic -x ../iterm/xterm-256color-italic.terminfo
tic -x ../iterm/tmux.terminfo
tic -x ../iterm/tmux-256color.terminfo

# install vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install oh-my-zsh
zsh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
