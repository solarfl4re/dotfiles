" Vim-plug
call plug#begin()

" writing plugin
Plug 'junegunn/goyo.vim'
Plug 'masukomi/vim-markdown-folding'
Plug 'arzg/vim-corvine'
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'mustache/vim-mustache-handlebars'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug 'evanleck/vim-svelte'
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

" <leader>
let mapleader=","

" Language
" Set langmap here? what's the best way to do it? SSH + Russian + iOS
" Russian + Colemak langmap
nmap <leader>r :set keymap=russian-colemak<CR>:set spelllang=ru,en<CR>
" Ukrainian + Colemak langmap
nmap <leader>u :set keymap=ukrainian-colemak<CR>:set spelllang=uk,en<CR>
nmap <leader>e :set keymap=<CR>:set spelllang=en<CR>

" Autocommands
if !exists("autocommands_loaded")
	" Autocommands
	let autocommands_loaded = 1
	au Filetype markdown set linebreak 
endif

set mouse=a
