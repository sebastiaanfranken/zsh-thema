#!/usr/bin/zsh

# The current working directory
current=$(pwd)

# If there is a file ~/.oh-my-zsh/themes/sebastiaanfranken.zsh-theme remove it
if [[ -f ~/.oh-my-zsh/themes/sebastiaanfranken.zsh-theme ]]; then
	rm ${HOME}/.oh-my-zsh/themes/sebastiaanfranken.zsh-theme
fi

# Link the sebastiaanfranken.zsh-theme file into ~/.oh-my-zsh/themes/
# and source the ~/.zshrc file
ln -sv ${current}/sebastiaanfranken.zsh-theme ${HOME}/.oh-my-zsh/themes/
sed -i 's/^ZSH_THEME=".*"/ZSH_THEME="sebastiaanfranken"/' ~/.zshrc
source ~/.zshrc

# Exit the script
exit 0
