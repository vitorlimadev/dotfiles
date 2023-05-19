export ZSH="$HOME/.oh-my-zsh"
export PATH="${HOME}/bin:${PATH}"

ZSH_THEME="jaischeema"

plugins=(git asdf zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

export EDITOR='nvim'

alias vi="nvim"
alias gs="git status"
alias gl="git log"
alias gcp="git cherry-pick"
alias run_tests="./scripts/run_tests.sh"

bindkey -v

# Fetches from develop all commits prefixed with the given Jira task ID, then creates a feature
# branch from master and start a cherry-pick with the fetched commits.
#
# Usage:
#   cherry_pick_task <Jira task ID>
#
# Example:
#   cherry_pick FSD-1679
function cherry_pick_task() {
  # Updating develop
  git checkout develop
  git pull

  # Fetching commits from oldest to latest
  local commits=$(git log --oneline | grep "$1" | awk '{ print $1 }' | tr '\n' ' ' | awk '{ for (i=NF; i>1; i--) printf("%s ",$i); print $1 }')

  if [[ $commits = "" ]]; then
    echo "ERROR: No commits from $1 were found. Check the task ID and try again."
    return 0
  fi

  echo "Commits from $1: $commits"

  # Creating feature branch and starting cherry-pick with the task commits
  git checkout master
  git pull
  eval "git checkout -b $1-to-master"
  eval "git cherry-pick $commits"
}
