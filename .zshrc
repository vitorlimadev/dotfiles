# Use powerline
USE_POWERLINE="false"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# Custom

# Tmux session templates
function panda-ws() {
	cd ~/stone/banking-panda
	tmux new-session -d -s 'panda'
	tmux rename-window -t 1 'nvim'
	tmux new-window -t panda:2 -n 'server'
	tmux attach-session -t panda:1 -c '~/stone/banking-panda' 
}

function mind-ws() {
	cd ~/humanoide/mind-api
	tmux new-session -d -s 'mind'
	tmux rename-window -t 1 'nvim'
	tmux new-window -t mind:2 -n 'server'
	tmux new-window -t mind:3 -n 'console'
	tmux attach-session -t mind:1
}

function estudologia-ws() {
	cd ~/humanoide/estudologia-client
	tmux new-session -d -s 'estudologia-web'
	tmux rename-window -t 1 'nvim'
	tmux new-window -t estudologia-web:2 -n 'server'
	tmux attach-session -t estudologia-web:1
}

# Generate changelogs
function gen-changelog() {
  local currentTag previousTag prevChangelogContents commits
  lastTag=$(git describe --tags $(git rev-list --tags --max-count=1))
  commits=$(git log --pretty=format:"- %s" $lastTag...$2)

  {
    echo "## [$1] $(date +'%Y-%m-%d')";
    echo "";
    echo "### Added";
    echo "";
    grep "feat:" <<< $commits
    echo "";
    echo "### Changed";
    echo "";
    grep -v "fix:" <<< $commits | grep -v "feat:"
    echo "";
    echo "### Fixed";
    echo "";
    grep "fix:" <<< $commits
  }
  echo "$prevChangelogContents"
}

function changelog-authors() {
  lastTag=$(git describe --tags $(git rev-list --tags --max-count=1))
  git log --pretty=format:'%an' $lastTag..HEAD | sort | uniq
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
export KERL_BUILD_DOCS=yes

alias vi="nvim"

alias gs="git status"
alias gl="git log"
alias gc="git commit -m "
alias gb="git blame"
alias gpull="git pull"
alias gpush="git push"
alias docker-suicide="docker-compose down && docker container prune -f && docker volume prune -f && docker network prune -f"

export JAVA_HOME=/usr/lib/jvm/java-11-adoptopenjdk
export ANDROID_HOME=~/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
