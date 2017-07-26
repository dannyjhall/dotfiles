DIR=/Users/danny/Projects/dotfiles

all:
	@echo "Run things individually!"

symlinks:
	@ln -nsf $(DIR)/vim/.vim ~/.vim
	@ln -sf $(DIR)/vim/.vimrc ~/.vimrc
	@ln -sf $(DIR)/tmux/.tmux.conf ~/.tmux.conf
	@ln -sf $(DIR)/git/.gitconfig ~/.gitconfig

install_brews:
	brew tap Homebrew/bundle
	brew tap caskroom/versions
	brew bundle

nvm:
	curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.2/install.sh | bash
	source ~/.nvm/nvm.sh && nvm install 6
	source ~/.nvm/nvm.sh && nvm alias default 6

