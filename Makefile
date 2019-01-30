install: install-vim install-tmux

install-vim:
	rm -rf ~/.vim ~/.vimrc
	ln -s `pwd`/.vim ~/.vim
	ln -s `pwd`/.vimrc ~/.vimrc
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall


install-tmux:
	git clone https://github.com/gpakosz/.tmux.git
	ln -s -f `pwd`/.tmux/.tmux.conf ~/.tmux.conf
	cp `pwd`/.tmux.conf.local ~/.tmux.conf.local
