
To install plugins as git submodule
    cd ~/.vim/bundle
    git submodule add http://github.com/tpope/vim-fugitive.git 
    git add .
    git commit -m "INstall Fugitive.vim bundle as submodule"

To install vim settings to other machine
    git clone git://github.com/pjsal/dotvim.git
    ln -s ~/.vim/vimrc ~/.vimrc
    
    cd ~/.vim
    git submodule init
    git submodule update

To update a plugin bundle
    cd ~/.vim/bundle/fugitive
    git pull origin master

To upgrade all bundle plugins
    git submodule foreach git pull origin master
