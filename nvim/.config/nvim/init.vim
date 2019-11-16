" Vim-plug
call plug#begin()

" writing plugin
Plug 'junegunn/goyo.vim'
Plug 'masukomi/vim-markdown-folding'
Plug 'arzg/vim-corvine'
Plug 'morhetz/gruvbox'
call plug#end()

" Syntax
syntax on

" Color
set background=dark
colorscheme gruvbox


" Language
" Set langmap here? what's the best way to do it? SSH + Russian + iOS
"set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz 

" Autocommands
"if !exists("autocommands_loaded")
"	" Autocommands
"	let autocommands_loaded = 1
"	au Filetype " need to make autocommand for markdown - turn on
"	linebreak TODO
"endif
"

