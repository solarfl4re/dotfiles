" Vim-plug
call plug#begin()

" writing plugin
Plug 'junegunn/goyo.vim'
Plug 'masukomi/vim-markdown-folding'
Plug 'arzg/vim-corvine'
Plug 'morhetz/gruvbox'
Plug 'mustache/vim-mustache-handlebars'
call plug#end()

" Syntax
syntax on

" whitespace
set expandtab
set shiftwidth=2
set tabstop=2
set autoindent

" Color
set background=dark
colorscheme gruvbox


" Language
" Set langmap here? what's the best way to do it? SSH + Russian + iOS
"set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz 

" Autocommands
if !exists("autocommands_loaded")
	" Autocommands
	let autocommands_loaded = 1
	au Filetype markdown set linebreak 
endif

set mouse=a
