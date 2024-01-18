call plug#begin()
	""file search
	Plug 'preservim/nerdtree'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	
	""colorschemes
	""Plug 'rebelot/kanagawa.nvim'
	Plug 'folke/tokyonight.nvim', { 'as': 'tokyonight'}
	
	""coc autocompletion
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	""buffer
	Plug 'nvim-lualine/lualine.nvim'

	""productivity
	Plug 'rust-lang/rust.vim'
	Plug 'dense-analysis/ale'
call plug#end()

colorscheme tokyonight 

let g:rustfmt_autosave = 1
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

"colorscheme + transparency
set background=dark
""hi Normal guibg=NONE ctermbg=NONE

"no swap files
set noswapfile
set nobackup

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

