dotvim
======

vim configuration files managed with pathogen and git submodules

Instructions for setting up new machine
---------------------------------------
```bash
    git clone git@github.com:crlane/dotvim.git ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Inside vim:
```
:PlugInstall
:PlugUpdate
```


