This is a setup script for Ben to use on a linux mint.
# Quick Use

clone this repo, or download it anywhere.
modify the custom_aliases file if you want something different
run `bash setup.sh` and follow the prompts.
> [!caution]
> When asked for a username and email be sure to respond in quotes.

# Upgrades
Fully upgrades the mint distribution to the most recent stable version. Also updates all packages.

# Installs
### zotero
A citation manager that has a plug in for most common browsers that allows for easy collection of bibliographic information.
### Obsidian
A markdown based note taking app with a robust simple interface and text formatting. Community pluggins make it incredibly versatile.
### miniconda
A light weight version of anaconda. Used for python/software environment management.
### neovim
An improved version of vi, the terminal based text editor
### git
A version manager. This is a commonly used software for version control among software developers. Your default branch name gets set to main and you set your user name and email.
### neofetch
A command that displays system information in the terminal in a pretty way.
### tmux
this is a terminal multiplexer. It is used to run many virtual terminal sessions that can be attached and detached from. Good for running things in the background or at the same time.
# Creates
### scienv python environment
A conda python environment with python, numpy, pandas, scipy, matplotlib, seaborn, and jupyter installed. This will allow ben to quickly get started using python on any computer he runs this script on.
### ssh key
an ssh key for github linking
### 01_Projects directory
A directory that holds project directories. a project is something with a definite due date that will get completed.
### 02_Areas directory
A directory that holds directories for areas of life. These are like projects but there is no defined end (e.g. Health, Buisness, Appartment_Documents)
### 03_Resources directory
A directory where stuff that may be useful some time but does not currently fit in a project or area.
### 04_Archive directory
A directory that holds stuff that seems to have no use, but you do not want to get rid of.
