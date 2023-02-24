export ZSH="$HOME/.oh-my-zsh"
export PATH="${HOME}/bin:${PATH}"

ZSH_THEME="half-life"
# FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4"

plugins=(git asdf)

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'

alias vi="nvim"
alias gs="git status"
alias gl="git log"
alias gcp="git cherry-pick"
alias run_tests="./scripts/run_tests.sh"
