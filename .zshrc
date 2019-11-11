# export paths
export ZSH="/home/killo/.oh-my-zsh"
export PATH="$HOME/.cargo/bin:$PATH"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# aliases
alias vimrc="vim ~/.config/nvim/init.vim"
alias zshrc="vim ~/.zshrc"
alias xresources="vim ~/.Xresources"
alias bspwmrc="vim ~/.config/bspwm/bspwmrc"
alias gitconfig="vim ~/.gitconfig"
alias neofetchconfig="vim ~/.config/neofetch/config.conf"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."

# welcome banner
figlet Batcomputer | lolcat -p 1.5 
echo "hello master $USER, what a beautyful $(date +'%A') isn't it?" | lolcat -p 1.5

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

plugins=(
	command-not-found
	copyfile
	fasd
	history
	nanoc
	pyenv
	pylint
	python
	ruby
)
