http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/ 
Take note to use HTTPS or SSH
.gitsubmodules - ALL https
.gitsubmodules-ssh - ALL ssh
CONSISTENT WITH ALL GIT REPO USE

To install plugins as git submodule
    cd ~/.vim/
    git submodule add http://github.com/tpope/vim-fugitive.git
        bundle/fugitive 
    git submodule init
    git submodule update  //to install
    git add .
    git commit -m "INstall Fugitive.vim bundle as submodule"

To install vim settings to other machine
    git clone git://github.com/pjsal/dotvim.git
    mkdir .vim
    cd root directory
    cp -a dotvim/. .vim
    ln -s ~/.vim/vimrc ~/.vimrc ( linux )
    ln -s .vim/vimrc .vimrc ( Mac )
    
    cd ~/.vim
    git submodule init
    git submodule sync
    git submodule update

To update a specific plugin bundle
    cd ~/.vim/bundle/fugitive
    git pull origin master

To upgrade all bundle plugins
    cd ~/.vim
    sudo git submodule foreach git pull origin master

To delete directory submodule
   git rm --cached submodule
          cd ~/.vim
     e.g  git rm --cached bundle/bundle/vim-indent-guides
