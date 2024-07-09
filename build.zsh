#!/bin/zsh

brew install zoxide
echo 'eval "$(zoxide init zsh)"' ~/.zshrc

brew install fzf 
echo 'source <(fzf --zsh)' ~/.zshrc

brew install eza

curl -sL https://github.com/djl/vcprompt/raw/master/bin/vcprompt > ~/bin/vcprompt
chmod 755 ~/bin/vcprompt

curl -o ~/.zshrc https://raw.githubusercontent.com/ethanwater/terminal/main/config/.zshrc 
curl -o ~/.wezterm.lua https://raw.githubusercontent.com/ethanwater/terminal/main/config/wezterm.lua

mkdir ~/.config/nvim
curl -o ~/.config/nvim/init.lua https://raw.githubusercontent.com/ethanwater/terminal/main/config/init.lua 
curl -o ~/.config/nvim/lazy-lock.json https://raw.githubusercontent.com/ethanwater/terminal/main/config/lazy-lock.json
