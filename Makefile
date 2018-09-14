setup-git:
	cp .git-prompt.sh ${HOME}/.git-prompt.sh
	cp .gitconfig ${HOME}/.gitconfig

setup-homebrew:
	/usr/bin/ruby -e $(shell curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)

setup-tools:
	brew install golang kubernetes-cli kubernetes-helm packer terraform awscli

setup-git-config:
	cp .gitconfig ${HOME}/.gitconfig

setup-vim:
	brew install vim --with-lua
	bash scripts/vim-helper.sh
	cp .vimrc ${HOME}/.vimrc

setup-bash:
	cp .bashrc ${HOME}/.bashrc
	ln -s ${HOME}/.bashrc ${HOME}/.bash-profile

setup-misc:
	mkdir -p ${HOME}/bin
