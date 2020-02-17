#!/usr/bin/zsh

# The current working directory
current=$(pwd)

# Link the file 'sebastiaanfranken.zsh-theme' to ~/.oh-my-zsh/themes/
# and source the current zshrc file.
if [[ -f ~/.oh-my-zsh/themes/sebastiaanfranken.zsh-theme ]]; then
	rm ${HOME}/.oh-my-zsh/theme/sebastiaanfranken.zsh-theme
fi

ln -sv ${current}/sebastiaanfranken.zsh-theme ${HOME}/.oh-my-zsh/themes/
sed -i 's/^ZSH_THEME=".*"/ZSH_THEME="sebastiaanfranken"/' ~/.zshrc
source ~/.zshrc

# Exit the script
exit 0
