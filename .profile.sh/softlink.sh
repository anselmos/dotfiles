#!/bin/bash
pwd=$(pwd)
# Vi/VIM
ln -s $pwd/.vimrc $HOME/.vimrc 
# Tmux
mkdir $HOME/.profile.tmux
ln -s $pwd/.profile.tmux/dev $HOME/.profile.tmux/dev
ln -s $pwd/.profile.tmux/dev.session $HOME/.profile.tmux/dev.session
ln -s $pwd/.tmux.conf $HOME/.tmux.conf
# Profile
ln -s $pwd/.profile.aliases $HOME/.profile.aliases
ln -s $pwd/.profile.prompt $HOME/.profile.prompt
ln -s $pwd/.profile.scripts $HOME/.profile.scripts
ln -s $pwd/.profile.setvi $HOME/.profile.setvi

ln -s $pwd/.profile $HOME/.profile
