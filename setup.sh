#!/bin/bash

if [ "$1" = "new" ]; then
    # install some stuff via home brew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    brew update
    brew bundle
fi

sudo rm -rf ~/.vim > /dev/null 2>&1
sudo rm -rf ~/.vimrc > /dev/null 2>&1
sudo rm -rf ~/.bashrc > /dev/null 2>&1
sudo rm -rf ~/.tmux > /dev/null 2>&1
sudo rm -rf ~/.tmux.conf > /dev/null 2>&1
sudo rm -rf ~/.zsh_prompt > /dev/null 2>&1
sudo rm -rf ~/.zshrc > /dev/null 2>&1
sudo rm -rf ~/.gitconfig > /dev/null 2>&1
sudo rm -rf ~/.gitcustom > /dev/null 2>&1
sudo rm -rf ~/.psqlrc > /dev/null 2>&1
sudo rm -rf ~/.tigrc > /dev/null 2>&1
sudo rm -rf ~/.config > /dev/null 2>&1
sudo rm -rf ~/.gitcustom > /dev/null 2>&1

# install plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# create neovim directory
mkdir -p ~/.config/nvim

#sym link configs
ln -s ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim
ln -s ~/dotfiles/nvim/config ~/.config/nvim/config
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/gitcustom ~/.gitcustom
ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc
ln -s ~/dotfiles/zsh/zsh_prompt ~/.zsh_prompt
ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/tmux ~/.tmux
ln -s ~/dotfiles/.tool-versions ~/.tool-versions

# install .tool-versions
asdf install
