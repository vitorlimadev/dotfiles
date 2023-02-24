export ZSH="$HOME/.oh-my-zsh"
export PATH="${HOME}/bin:${PATH}"

ZSH_THEME="half-life"
FZF_DEFAULT_OPTS="--ansi --preview-window 'right:60%' --layout reverse --margin=1,4"

plugins=(git asdf)

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'

alias vi="nvim"
alias run_tests="./scripts/run_tests.sh"
alias gs="git status"
alias gl="git log"
alias gcp="git cherry-pick"
alias ubuntu="ssh -L 3000:192.168.3.83:3000 victor@192.168.3.83"
