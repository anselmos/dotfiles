#!/bin/bash
pwd=$(pwd)
# Vi/VIM
ln -s $pwd/.vimrc $HOME/.vimrc 
# Tmux
mkdir $HOME/.profile.tmux
# Dev session
ln -s $pwd/.profile.tmux/dev $HOME/.profile.tmux/dev
ln -s $pwd/.profile.tmux/dev.session $HOME/.profile.tmux/dev.session
# Manage session
ln -s $pwd/.profile.tmux/manage $HOME/.profile.tmux/manage
ln -s $pwd/.profile.tmux/manage.session $HOME/.profile.tmux/manage.session

ln -s $pwd/.tmux.conf $HOME/.tmux.conf
# Profile
ln -s $pwd/.profile.aliases $HOME/.profile.aliases
ln -s $pwd/.profile.prompt $HOME/.profile.prompt
ln -s $pwd/.profile.scripts $HOME/.profile.scripts
ln -s $pwd/.profile.setvi $HOME/.profile.setvi

# Profile.sh for git-shell script with git-prompt from zsh.

mkdir $HOME/.profile.sh
ln -s $pwd/.profile.sh/.git-prompt.sh $HOME/.profile.sh/.git-prompt.sh

ln -s $pwd/.profile $HOME/.profile
# Bashrc that has .profile added as "source"
ln -s $pwd/.bashrc $HOME/.bashrc
