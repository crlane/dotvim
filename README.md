dotvim
======

vim configuration files managed with pathogen and git submodules

Instructions for setting up new machine
---------------------------------------
```bash
    git clone git@github.com:crlane/dotvim.git ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
    cd ~/.vim
    git submodule update --init --recursive
    git submodule foreach git pull origin master
```
