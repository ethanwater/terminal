#!/bin/zsh

curl -o ~/.zshrc https://raw.githubusercontent.com/ethanwater/terminal/main/.zshrc 

brew install lsd

brew install neofetch

brew install zoxide
echo 'eval "$(zoxide init zsh)"' ~/.zshrc

brew install fzf 
echo 'source <(fzf --zsh)' ~/.zshrc

brew install vcprompt 

curl -sL https://github.com/djl/vcprompt/raw/master/bin/vcprompt > ~/bin/vcprompt
chmod 755 ~/bin/vcprompt

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

mkdir ~/.config/nvim
curl -o ~/.config/nvim/init.vim https://raw.githubusercontent.com/ethanwater/terminal/main/nvim/init.vim 
curl -o ~/.config/nvim/lazy-lock.json https://raw.githubusercontent.com/ethanwater/terminal/main/nvim/lazy-lock.json

