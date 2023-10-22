export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/yolo/fraud-deps/functions:$HOME/bin:$PATH"
export KERL_BUILD_DOCS=yes

ZSH_THEME="jaischeema"

plugins=(git asdf mix zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'

alias vi="nvim"
alias gs="git status"
alias gl="git log"
alias gcp="git cherry-pick"
alias gr="git rebase"

bindkey -v
