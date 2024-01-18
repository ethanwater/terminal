#welcome prompt
echo "\033[1;36m$(date -R)\033[0m"
echo "\033[1;36mOS:\033[0m     \033[1;35m$(uname -m) $(uname -s)-$(uname -r)\033[0m"
echo "\033[1;36mHost:\033[0m   \033[1;32m$(hostname -f)\033[0m"
echo "\033[1;36mUptime:\033[0m \033[1;34m$(uptime)\033[0m"

github(){
	open https://github.com
}

nanometal(){
	cd ~/codebase/nanometal
	qemu-system-x86_64 -drive format=raw,file=target/x86_64-nanometal/debug/bootimage-nanometal.bin
}

lc(){
	linecount
}

vivian.singledeploy(){
	cd ~/codebase/vivian-prototype/build/vivian-single/
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

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ethan/Documents/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ethan/Documents/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ethan/Documents/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ethan/Documents/google-cloud-sdk/completion.zsh.inc'; fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/ethan/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/ethan/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/ethan/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/ethan/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

