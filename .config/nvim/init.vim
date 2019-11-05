" Vim-plug
call plug#begin()

" writing plugin
Plug 'junegunn/goyo.vim'
Plug 'masukomi/vim-markdown-folding'
Plug 'arzg/vim-corvine'
call plug#end()

" Color
colorscheme corvine_light
set termguicolors " Make the theme look good!

" Autocommands
"if !exists("autocommands_loaded")
"	" Autocommands
"	let autocommands_loaded = 1
"	au Filetype " need to make autocommand for markdown - turn on
"	linebreak TODO
"endif
"

