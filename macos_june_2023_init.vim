call plug#begin()
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'folke/tokyonight.nvim', { 'as': 'tokyonight'}
	Plug 'nvim-lualine/lualine.nvim'
call plug#end()

"colorscheme + transparency
colorscheme tokyonight
hi Normal guibg=NONE ctermbg=NONE

"no swap files
set noswapfile

"set relative live number
set rnu

set scrolloff=8
set colorcolumn=80
set textwidth=80
set linebreak
"tab spacing
set noexpandtab
set tabstop=2
set shiftwidth=2

"telescope mapping
nnoremap ff <cmd>Telescope find_files<cr>
nnoremap fg <cmd>Telescope live_grep<cr>

"complettion
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
"
"lua
lua << END
require('lualine').setup {
	options = {
		theme = 'tokyonight'
	}
}
END
