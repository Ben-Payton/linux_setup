#! /bin/bash

echo "hello world"

# make prefered directories
mkdir ~/01_Projects
mkdir ~/02_Areas
mkdir ~/03_Resources
mkdir ~/04_Archive

# install software i use regularly
sudo apt install tmux git

flatpak install flathub md.obsidian.Obsidian

# Configure git to initialize the main branch as main instead of the outdated "master" branch
git config --global init.defaultBranch main

# Install and configure miniconda
if [ ! -d ~/miniconda3 ]; then
	wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
	bash Miniconda3-latest-Linux-x86_64.sh
	rm Miniconda3-latest-Linux-x86_64.sh
	source ~/.bashrc
	conda create --name scienv python scipy numpy matplotlib pandas jupyter
fi
# move custom aliases as i like them
if [ ! -f ~/.my_aliases ]; then
	cp ./custom_aliases ~/.my_aliases
	echo "#######" >> ~/.bashrc
	echo "if [ -f .my_aliases ]; then" >> ~/.bashrc
	echo "	. .my_aliases" >> ~/.bashrc
	echo "fi" >> ~/.bashrc
	echo "#######" >> ~/.bashrc 
	echo "" >> ~/.bashrc
fi
