# ZSH specific
export HISTFILE="~/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000

PROMPT=$'%F{white}%~ %B>%f%b '

# Tmux session templates
function panda-ws() {
	cd ~/stone/banking-panda
	tmux new-session -d -s 'panda'
	tmux attach-session -t panda:1
}

function mind-web-ws() {
	cd ~/humanoide/mind-web-client
	tmux new-session -d -s 'mind-web'
	tmux attach-session -t mind-web:1
}

function mind-api-ws() {
	cd ~/humanoide/mind-api
	tmux new-session -d -s 'mind-api'
	tmux attach-session -t mind-api:1
}

function estudologia-ws() {
	cd ~/humanoide/estudologia-client
	tmux new-session -d -s 'estudologia'
	tmux attach-session -t estudologia:1
}

# Vault login
vault-login() { 
  vault login -method=oidc -address="https://vault.shared.stone.credit/" role=azure 
  vault kv get -address="https://vault.shared.stone.credit/" kv-v2/devs/docker-registry/azure 
}

vault-list-roles() { 
	vault list aws/roles/
}

vault-read-aws-credentials() {
	vault read aws/creds/$1 ttl=12h
}

# Stone AWS
aws-eks() { 
	aws eks --profile $1 --region us-east-1 update-kubeconfig --name $1 --alias $1
}

aws-get-credentials() {
	vault-read-aws-credentials $1 > /tmp/aws-credentials
	echo "[$1]
	aws_access_key_id=$(cat /tmp/aws-credentials | grep access_key | cut -c 20-)
	aws_secret_access_key=$(cat /tmp/aws-credentials | grep secret_key | cut -c 20-)
	aws_session_token=$(cat /tmp/aws-credentials | grep security_token | cut -c 20-)"
}

aws-set-credentials() {
	aws-get-credentials k8s-sandbox > ~/.aws/credentials
	aws-get-credentials k8s-homolog >> ~/.aws/credentials
}

aws-update-contexts() {
	aws-eks k8s-sandbox
	aws-eks k8s-homolog
}

aws-setup() {
	vault-login
	aws-set-credentials
	aws-update-contexts
}

# Correctly update submodules
function gusub() {
	git switch master
	git pull
	git submodule update --init
	commit=$(git submodule status | awk '{ print $1 }')
	git switch -
	dir=$(git submodule status | awk '{ print $2 }')
	cd "$dir"
	git fetch origin
	git checkout "$commit"
	cd -
	git add "$dir"
	git commit -m "chore: update submodule"
}

. $HOME/.asdf/asdf.sh
export PATH=~/bin:$PATH
export KERL_BUILD_DOCS=yes
export EDITOR="nvim"
export VISUAL="nvim"

alias vi="nvim"

alias g="lazygit"
alias gs="git status"
alias gl="git log"
alias gc="git commit -m "
alias gb="git blame"
alias gpull="git pull"
alias gpush="git push"
alias docker-suicide="docker-compose down && docker container prune -f && docker volume prune -f && docker network prune -f"
