export EDITOR='nvim'

export ZSH="$HOME/.oh-my-zsh"
export PATH="$HOME/bin:$PATH"
export ASDF_DATA_DIR=/media/victor/data/.asdf
export KERL_BUILD_DOCS=yes

ZSH_THEME="jaischeema"

plugins=(git mix zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias vi="nvim"
alias t="tmux"

alias gs="git status"
alias gl="git log"
alias gcp="git cherry-pick"
alias gr="git rebase"

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

bindkey -v

function monero_wallet() {
  ~/data/xmr/wallet/monero-wallet-cli \
    --daemon-address localhost:18081 \
    --trusted-daemon \
    --wallet-file ~/data/xmr/wallet/$1
}

function start_monerod() {
  ~/data/xmr/daemon/monerod \
    --data-dir ~/data/xmr/daemon/.bitmonero \
    --zmq-pub tcp://127.0.0.1:18083 \
    --out-peers 32 \
    --in-peers 64 \
    --add-priority-node=p2pmd.xmrvsbeast.com:18080 \
    --add-priority-node=nodes.hashvault.pro:18080 \
    --disable-dns-checkpoints \
    --enable-dns-blocklist

}

function start_p2pool() {
  ~/data/xmr/p2pool/p2pool --mini --host 127.0.0.1 --wallet $1
}

function start_xmrig() {
  sudo ~/data/xmr/xmrig/xmrig -o 127.0.0.1:3333 --threads 16
}

. "/media/victor/data/.asdf/asdf.sh"
source "/home/victor/.config/asdf-direnv/zshrc"
