source ~/.asdf/asdf.fish

if type -q exa
	alias ls "exa -l --icons"
	alias lt "exa --icons --tree --level=2 -a"
	alias lsa "ll -a"
end

alias v "nvim"
alias gi "git init"
alias gs "git status"
alias gc "git commit -m "
alias gl "git log"
alias gpull "git pull"
alias gpush "git push"

starship init fish | source
