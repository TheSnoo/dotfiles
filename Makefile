install: install-vim install-tmux

install-vim:
	rm -rf ~/.vim ~/.vimrc
	rm -rf `pwd`/.vim
	mkdir `pwd`/.vim/bundle -p
	ln -s `pwd`/.vim ~/.vim
	ln -s `pwd`/.vimrc ~/.vimrc
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	vim +PluginInstall +qall


install-tmux:
	rm -rf `pwd`/.tmux
	git clone https://github.com/gpakosz/.tmux.git
	ln -s -f `pwd`/.tmux/.tmux.conf ~/.tmux.conf
	cp `pwd`/.tmux.conf.local ~/.tmux.conf.local
