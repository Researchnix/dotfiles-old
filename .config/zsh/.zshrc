



alias ls='ls --color=auto'
alias dfs='git --git-dir=/home/lennart/.dotfiles/ --work-tree=/home/lennart/'
alias ez='nvim /home/lennart/.config/zsh/.zshrc'
alias ea='nvim /home/lennart/.config/alacritty/alacritty.yml'
alias sz='source /home/lennart/.config/zsh/.zshrc'
alias nn='nvim'








ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

# add my personal binaries to the path
if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

PATH="$HOME/.local/bin:$PATH"


# Load other files if existent.
# [ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc"
# [ -f "$HOME/.config/alias.rc" ] && source "$HOME/.config/alias.rc"
# [ -f "$HOME/.profile" ] && source "$HOME/.profile"



# Path to your oh-my-zsh installation for arch linux
# ZSH=/usr/share/oh-my-zsh/







plugins=(git)







rsx="https://github.com/researchnix"






# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# awesomepanda
# clean
# agnoster
# kennethreitz
# robbyrussell
ZSH_THEME="agnoster"






# copy of lukes fzf version
# se() { du -a ~/.scripts/* ~/.config/* | awk '{print $2}' | fzf | xargs -r $EDITOR ;}
# em() { du -a $HOME/Documents/md/* | awk '{print $2}' | fzf | xargs $EDITOR ;}
# ef() { du -a ./* | awk '{print $2}' | fzf | xargs -r $EDITOR ;}






# my aliasses


# # quick jumps to important notes
# alias hs="hugo server -D"
# alias words="cd $HOME/Documents/md && nvim words.md"
# alias top="vtop -t nord"

# alias cs="config status"
# alias vw="nvim ~/Documents/md/index.md"
# alias py="python3"
# alias cls="config ls-tree --full-tree -r --name-only HEAD"

# alias v="nvim"
# alias w="nvim $HOME/Wiki/index.md -c 'Git pull'"
# alias s="source"
# alias c="clear"
# alias t="tmux"
# alias l="ls -lah"
# alias ld="ls -ld -- */"
# alias l.="ls -A | egrep '^\.'"
# alias ll="ls -lah | less"
# alias vim="nvim"
# alias v="nvim"
# alias f="vifm"
# alias tr="tree"

# alias ea="nvim $HOME/.config/alias.rc"
# alias eb="nvim $HOME/.bib/b.bib"
# alias en="nvim $HOME/.config/nvim/init.vim"
# alias ej="nvim $HOME/Dropbox/ntb/src"
# alias et="nvim $HOME/.tmux.conf"
# alias ex="nvim $HOME/.xmonad/xmonad.hs"
# alias ez="nvim $HOME/.config/zsh/.zshrc"
# alias et="nvim $HOME/.config/alacritty/alacritty.yml"
# alias ep="nvim $HOME/.config/brew/packages"

# alias sz="source $HOME/.zshrc"
# alias sx="xmonad --recompile && xmonad --restart"

# alias config="git --git-dir=$HOME/.dfs/ --work-tree=$HOME"


# # fix obvious typo's
# alias cd..='cd ..'
# alias pdw="pwd"


# # readable output
# alias df="df -h"


# # shutdown or reboot
# alias ssn="sudo shutdown now"
# alias sr="sudo reboot"


# Path to your oh-my-zsh installation.
export ZSH="/home/lennart/.oh-my-zsh"
# source oh-my-zsh
source $ZSH/oh-my-zsh.sh



# vi mode
bindkey	-v
export KEYTIMEOUT=1
