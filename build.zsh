#!/bin/zsh

curl -o ~/.zshrc https://raw.githubusercontent.com/ethanwater/terminal/main/.zshrc 

brew install zoxide
echo 'eval "$(zoxide init zsh)"' ~/.zshrc

brew install fzf 
echo 'source <(fzf --zsh)' ~/.zshrc

curl -sL https://github.com/djl/vcprompt/raw/master/bin/vcprompt > ~/bin/vcprompt
chmod 755 ~/bin/vcprompt

mkdir ~/.config/nvim
curl -o ~/.config/nvim/init.lua https://raw.githubusercontent.com/ethanwater/terminal/main/nvim/init.lua 
curl -o ~/.config/nvim/lazy-lock.json https://raw.githubusercontent.com/ethanwater/terminal/main/nvim/lazy-lock.json

