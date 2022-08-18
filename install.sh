#!/bin/bash

# prompt user to copy .aliases to home (y/n)
read -p "Copy .aliases to ~/ (y/n)" -n 1 -r
echo    
if [[ $REPLY =~ ^[Yy]$ ]]
then
    cp -v zsh/.aliases ~/.aliases
fi

# prompt user to copy jacques.zsh-theme to theme folder (y/n)
read -p "Copy jacques.zsh-theme to ~/.oh-my-zsh/themes/ (y/n)" -n 1 -r
echo    
if [[ $REPLY =~ ^[Yy]$ ]]
then
    cp -v zsh/jacques.zsh-theme ~/.oh-my-zsh/themes/
fi

# prompt user to copy .tmux.conf to home (y/n)
read -p "Copy .tmux.conf to ~/ (y/n)" -n 1 -r
echo    
if [[ $REPLY =~ ^[Yy]$ ]]
then
    cp -v tmux/.tmux.conf ~/.tmux.conf
fi

# prompt user to copy init.vim to ~/.config/nvim/ (y/n)
read -p "Copy init.vim to ~/.config/nvim/ (y/n)" -n 1 -r
echo    
if [[ $REPLY =~ ^[Yy]$ ]]
then
    cp -v nvim/init.vim ~/.config/nvim/init.vim
fi

# prompt user to copy minimal_init.vim to ~/.config/nvim/ (y/n)
read -p "Copy minimal_init.vim to ~/.config/nvim/ (y/n)" -n 1 -r
echo    
if [[ $REPLY =~ ^[Yy]$ ]]
then
    cp -v nvim/minimal_init.vim ~/.config/nvim/init.vim
fi

# prompt user to copy coc-settings.json to ~/.config/nvim/ (y/n)
read -p "Copy coc-settings.json to ~/.config/nvim/ (y/n)" -n 1 -r
echo    
if [[ $REPLY =~ ^[Yy]$ ]]
then
    cp -v nvim/coc-settings.json ~/.config/nvim/coc-settings.json
fi
