#!/bin/bash
mkdir -p ~/.config/nvim

ln -s ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim
ln -s ~/dotfiles/nvim/config ~/.config/nvim/config

ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/bashrc ~/.bashrc
ln -s ~/dotfiles/zsh/zshrc ~/.zshrc
ln -s ~/dotfiles/zsh/zsh_prompt ~/.zsh_prompt
ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/tmux ~/.tmux


