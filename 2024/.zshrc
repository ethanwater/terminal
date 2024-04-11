echo "OS:     \033[1;35m$(uname -m) $(uname -s)-$(uname -r)\033[0m"
echo "Host:   \033[1;36m$(hostname -f)\033[0m"
echo "Uptime: \033[1;34m$(uptime)\033[0m"

vcgit(){
	echo "\033[1;35m$(vcprompt)\033[0m"
}

setopt prompt_subst
export PS1='%n@%m:%~ $(vcgit)$ '

github.home(){
	open https://github.com
}

repo() {
    remote_origin_url=$(git config --get remote.origin.url)
    url="$remote_origin_url"
    open "$url"
}

dark() {
	redshift -o 1250
}

light() {
	redshift -x
}

sync.note() {
	git add .
	git commit -m 'syncing notes'
	git push origin main
}

nanometal(){
	cd ~/codebase/nanometal
	qemu-system-x86_64 -drive format=raw,file=target/x86_64-nanometal/debug/bootimage-nanometal.bin
}


anima.source(){
	code ~/codebase/vivian.anima
}

infra.source(){
	code ~/codebase/vivian.infra
}

vivian.deploy(){
	cd ~/codebase/vivian.infra/build
	go run main.go
}

vivian.source(){
	open https://github.com/vivian-app/vivian.infra 
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


