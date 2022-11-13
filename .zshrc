export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git asdf)

source $ZSH/oh-my-zsh.sh

# Tmux session templates
function fraud-engine-ws() {
  cd ~/yolo/fraud-engine
  tmux new-session -d -s 'fraud'
	tmux rename-window -t 1 'nvim'
	tmux new-window -t fraud:2 -n 'tests'
	tmux attach-session -t fraud:1 -c '~/yolo/fraud-engine' 
}

function kyc-service-ws() {
  cd ~/yolo/kyc-service
  tmux new-session -d -s 'kyc'
	tmux rename-window -t 1 'nvim'
	tmux new-window -t kyc:2 -n 'tests'
	tmux attach-session -t kyc:1 -c '~/yolo/kyc-service' 
}

function stacks-ws() {
  cd ~/yolo/stacks
  tmux new-session -d -s 'stacks'
	tmux rename-window -t 1 'nvim'
	tmux attach-session -t stacks:1 -c '~/yolo/stacks' 
}

function panda-ws() {
  cd ~/stone/banking-panda
  tmux new-session -d -s 'panda'
	tmux rename-window -t 1 'nvim'
	tmux attach-session -t stacks:1 -c '~/stone/banking-panda' 
}

export EDITOR='nvim'

alias vi="nvim"
alias run_tests="./scripts/run_tests.sh"
alias gs="git status"
alias gl="git log"
alias gcp="git cherry-pick"
alias ubuntu="ssh -L 3000:192.168.3.83:3000 victor@192.168.3.83"
