export EDITOR='nvim'

export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/bin:$PATH"
export KERL_BUILD_DOCS=yes

ZSH_THEME="half-life"

#plugins=(git mix zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias vi="nvim"
alias t="tmux"

alias env_sandbox="export AWS_PROFILE=plataforma-sandbox &&
    aws eks update-kubeconfig \
    --name arvore-stg-eks \
    --region=us-east-1 && \
    kubectl config set-context arn:aws:eks:us-east-1:809970906859:cluster/arvore-stg-eks \
    --namespace=prod"

alias env_prod="export AWS_PROFILE=plataforma-prod && \
    aws eks update-kubeconfig \
    --name arvore-prd-eks \
    --region=us-east-1 && \
    kubectl config \
    set-context arn:aws:eks:us-east-1:974631838055:cluster/arvore-prd-eks"

. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"
eval "$(direnv hook zsh)"
