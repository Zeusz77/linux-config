#!/bin/bash
if [[ $1 == true ]]
then
	starship=$1
else
	starship=false
fi

if [[ $starship == true ]]
then
	curl -sS https://starship.rs/install.sh | sh 
	cp ./starship.toml ~/.config/starship.toml
	cp ./.zshrc ~/.zshrc
else
	cp ./.zshrc2 ~/.zshrc

fi

chsh -s $(which zsh)
cp ./.tmux.conf /usr/share/.tmux.conf

source ~/.zshrc
