#!/bin/zsh

echo "💉 Injecting custom macOS config..."

#---MACOS_DEFAULTS---------------------------------------------------
echo "Configuring macOS defaults..."
mkdir ~/Labs

defaults write com.apple.dock tilesize -int 42
defaults write com.apple.dock largesize -int 47
defaults write com.apple.dock autohide -bool true
killall Dock

mkdir -p ~/Images/Screenshots
mkdir -p ~/Images/Wallpapers
defaults write com.apple.screencapture location -string "~/Images/Screenshots"
killall SystemUIServer
#--------------------------------------------------------------------


#---HOMEBREW_INSTALL-------------------------------------------------
if ! command -v brew &>/dev/null; then
	echo "Installing Homebrew... "
	NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	eval "$(/opt/homebrew/bin/brew shellenv 2>/dev/null || /usr/local/bin/brew shellenv)"
fi

if ! command -v brew &>/dev/null; then
  echo "Homebrew failed to install. Aborting..."
	exit 1
else
	brew install lsd
	brew install fzf 
	brew install zoxide
	brew install neofetch
	brew install neovim
	brew install gh
fi
#--------------------------------------------------------------------


#---ZSHRC_FILE_INSTALL-----------------------------------------------
echo "Configuring Zsh..."
curl -o ~/.zshrc https://raw.githubusercontent.com/ethanwater/terminal/main/.zshrc 
#--------------------------------------------------------------------


#---GIT_SETUP--------------------------------------------------------
echo "Configuring Git..."
git config --global user.name ethan
git config --global user.email watermonic@gmail.com
gh auth login
#--------------------------------------------------------------------


#---NEOVIM_SETUP-----------------------------------------------------
echo "Configuring Neovim..."
mkdir ~/.config/nvim

echo "Installing vim-plug..."
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

echo "Installing nvim config..."
curl -o ~/.config/nvim/init.vim https://raw.githubusercontent.com/ethanwater/terminal/main/init.vim 
curl -o ~/.config/nvim/lazy-lock.json https://raw.githubusercontent.com/ethanwater/terminal/main/lazy-lock.json

if command -v nvim &>/dev/null; then
	echo "Installing nvim plugins..."
	nvim -c ":PlugInstall" -c ":q" -c ":q"
fi
#--------------------------------------------------------------------


#---APPS-------------------------------------------------------------
echo "Installing Warp..."
brew install --cask warp

echo "Installing VSCode..."
brew install --cask visual-studio-code

echo "Installing Obsidian..."
brew install --cask obsidian
#--------------------------------------------------------------------

echo "Done!"

