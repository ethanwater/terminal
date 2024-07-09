#!/bin/zsh

brew install zoxide
echo 'eval "$(zoxide init zsh)"' ~/.zshrc

brew install fzf 
echo 'source <(fzf --zsh)' ~/.zshrc

curl -o ~/.zshrc https://raw.githubusercontent.com/ethanwater/terminal/main/.zshrc
curl -o ~/.wezterm.lua https://raw.githubusercontent.com/ethanwater/terminal/main/wezterm.lua

mkdir ~/.config/nvim
curl -o ~/.config/nvim/init.lua https://github.com/ethanwater/terminal/blob/main/init.lua
curl -o ~/.config/nvim/lazy-lock.json https://raw.githubusercontent.com/ethanwater/terminal/main/lazy-lock.json