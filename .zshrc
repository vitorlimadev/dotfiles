export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/yolo/fraud-deps/functions:$HOME/bin:$PATH"
export KERL_BUILD_DOCS=yes

ZSH_THEME="jaischeema"

plugins=(git asdf mix)

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'

alias t="tmux"

alias vi="nvim"
alias gs="git status"
alias gl="git log"
alias gcp="git cherry-pick"
alias gr="git rebase"

bindkey -v
source /home/victor/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/victor/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/victor/zsh-autosuggestions/zsh-autosuggestions.zsh
source "${XDG_CONFIG_HOME:-$HOME/.config}/asdf-direnv/zshrc"
