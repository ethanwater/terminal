echo "\033[1;36m$(date -R)\033[0m"
echo "\033[1;36mOS:\033[0m     \033[1;35m$(uname -m) $(uname -s)-$(uname -r)\033[0m"
echo "\033[1;36mHost:\033[0m   \033[1;32m$(hostname -f)\033[0m"
echo "\033[1;36mUptime:\033[0m \033[1;34m$(uptime)\033[0m"

vivian.singledeploy(){
	cd build/vivian-single/
	go build .
	export PATH="$PATH:$HOME/go/bin"
	weaver single deploy singledeploy.toml
}

vivian.multideploy(){
	cd build/vivian-multi/
	go build .
	export PATH="$PATH:$HOME/go/bin"
	weaver multi deploy multideploy.toml
}

vivian.app(){
	open https://localhost:2695/webui/apps-login/
}

github(){
	https://github.com/ethanwater
}

intern(){
	cd ~/Documents
	nvim internships.apply
}

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ethan/Documents/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ethan/Documents/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ethan/Documents/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ethan/Documents/google-cloud-sdk/completion.zsh.inc'; fi
