export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/yolo/fraud-deps/functions:$HOME/bin:$PATH"

ZSH_THEME="jaischeema"

plugins=(git asdf zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'

alias python="python3"
alias vi="nvim"
alias gs="git status"
alias gl="git log"
alias gcp="git cherry-pick"
alias run_tests="./scripts/run_tests.sh"

bindkey -v
export PATH=$PATH:/Users/vitor.lima/.spicetify
