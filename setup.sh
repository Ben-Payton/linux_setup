#! /bin/bash

sudo apt dist-upgrade
sudo apt install --upgrade
sudo apt install --update

# Gets zotero available to managed by apt
wget -qO- https://raw.githubusercontent.com/retorquere/zotero-deb/master/install.sh | sudo bash
sudo apt update

echo ""
echo ""
echo "What is your name? (This will only be used for git):"
read user_name
echo "What is your email? (This will only be used for git and ssh keygen if ssh key does not already exist):"
read user_email
# make prefered directories

function qdir {
	if [ ! -d $1 ]; then
		mkdir $1
		echo "'$1' created."
	else
		echo "'$1' already exists."
	fi
}

qdir ~/01_Projects
qdir ~/02_Areas
qdir ~/03_Resources
qdir ~/04_Archive

# install software i use regularly
sudo apt install tmux git neovim neofetch zotero

flatpak install flathub md.obsidian.Obsidian

# Configure git to initialize the main branch as main instead of the outdated "master" branch
git config --global init.defaultBranch main
git config --global user.name $user_name
git config --global user.email $user_email
# Install and configure miniconda
if [ ! -d ~/miniconda3 ]; then
	wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
	bash Miniconda3-latest-Linux-x86_64.sh
	rm Miniconda3-latest-Linux-x86_64.sh
	source ~/.bashrc
	conda create --name scienv python scipy numpy matplotlib pandas seaborn jupyter
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


# generate an ssh key
if [ ! -f ~/.ssh/id_ed25519.pub ]; then
	echo "generating ssh key"
	ssh-keygen -t ed25519 -C "$user_email"
else
	echo "ssh key already exits"
fi
