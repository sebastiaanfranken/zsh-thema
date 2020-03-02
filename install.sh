#!/usr/bin/zsh

# The current working directory
current=$(pwd)

# Link the sebastiaanfranken.zsh-theme file into ~/.oh-my-zsh/themes/
# and source the ~/.zshrc file
if [[ $(uname -s) == "Darwin" ]]; then
	echo "This only runs on Linux."
	echo "If you really want to install, manually copy (or symlink) the sebastiaanfranken.zsh-theme into ~/.oh-my-zsh/custom/themes/"
	exit 1
else
	# If there is a file ~/.oh-my-zsh/custom/themes/sebastiaanfranken.zsh-theme remove it
	if [[ -f ~/.oh-my-zsh/custom/themes/sebastiaanfranken.zsh-theme ]]; then
		rm ${HOME}/.oh-my-zsh/custom/themes/sebastiaanfranken.zsh-theme
	fi

	ln -sv ${current}/sebastiaanfranken.zsh-theme ${HOME}/.oh-my-zsh/custom/themes/
	sed -i 's/^ZSH_THEME=".*"/ZSH_THEME="sebastiaanfranken"/' ~/.zshrc

	# Reload the current zsh instance
	source ~/.zshrc
fi

# Exit the script
exit 0
