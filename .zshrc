eval "$(zoxide init zsh)"
source <(fzf --zsh)
setopt prompt_subst
export PATH="/usr/local/bin:$PATH"

alias ls=lsd
alias cl=clear

repo() {
	remote_origin_url=$(git config --get remote.origin.url)
	url="$remote_origin_url"
	open "$url"
}

neofetch


