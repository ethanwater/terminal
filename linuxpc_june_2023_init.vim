"colorscheme + transparency
colorscheme tokyonight
hi Normal guibg=NONE ctermbg=NONE

"no swap files
set noswapfile

"set relative live number
set rnu

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
