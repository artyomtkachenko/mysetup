function vim_clean_all {
  echo "Deleting ${HOME}/.vim"
  rm -rf ${HOME}/.vim
  echo "Deleting ${HOME}/.vimrc"
  rm -f ${HOME}/.vimrc
}

function vim_plugin_pathogen_install {
  echo "Installing VIM plugin Pathogen"
  mkdir -p ~/.vim/autoload ~/.vim/bundle
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
  echo "Done"
}

function vim_plugin_nerdtree_install {
  echo "Installing VIM plugin Nerdtree"
  git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
  echo "Done"
}

function vim_plugin_jellybeans_install {
  echo "Installing VIM plugin Jellybeans"
  git clone https://github.com/nanotech/jellybeans.vim.git /tmp/jellybeans
  mkdir -p "${HOME}/.vim/colors"
  mv /tmp/jellybeans/colors/jellybeans.vim ~/.vim/colors/
  rm -rf /tmp/jellybeans
  echo "Done"
}

function vim_plugin_tcomment_install {
  echo "Installing VIM plugin Tcomment"
  git clone https://github.com/tomtom/tcomment_vim.git ~/.vim/bundle/tcomment
  echo "Done"
}

function vim_plugin_neocomplete_install {
  echo "Installing VIM plugin Neocomplete"
  git clone https://github.com/Shougo/neocomplete.vim.git ~/.vim/bundle/neocomplete
  echo "Done"
}

function vim_plugin_vimgo_install {
  echo "Installing VIM plugin Vim-go"
  git clone https://github.com/fatih/vim-go.git ~/.vim/bundle/vim-go
  echo "Done"
}

function vim_plugin_ansible_install {
  echo "Installing VIM plugin vim-ansible-yaml"
  git clone git://github.com/chase/vim-ansible-yaml.git ~/.vim/bundle/vim-ansible-yaml
  echo "Done"
}

function vim_setup {
  vim_clean_all
  vim_plugin_pathogen_install
  vim_plugin_nerdtree_install
  vim_plugin_jellybeans_install
  vim_plugin_tcomment_install
  vim_plugin_neocomplete_install
  vim_plugin_vimgo_install
  vim_plugin_ansible_install
}

vim_setup
