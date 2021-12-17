set encoding=utf-8

set number        " show line numbers
set ignorecase    " ignore cASe when search
set smartcase     " consider UPPERCASE when search
set wrapscan      " wrap scan when search
set hls           " highlight search results
set ttimeoutlen=10

set tabstop=2  " 
set shiftwidth=0  " follow tabstop
set softtabstop=-1  " follow shiftwidth
set expandtab
set autoindent        " insert same amount of indent on new line
set smartindent       " insert adjusted amount of indent
set noswapfile " stop generating swap files

let mapleader = "\<Space>"

nnoremap <Esc><Esc> :nohlsearch<CR><ESC>

" w!! to save file as root
cmap w!! w !sudo tee > /dev/null %

" <S-Tab> for inverse tab
" for normal mode
nnoremap <S-Tab> <<
" for insert mode
inoremap <S-tab> <C-d>

autocmd FileType python setlocal tabstop=4 shiftwidth=0 expandtab

"change split orientations
set splitbelow
set splitright

"nmap <S-CR> O<Esc>  " looking for how to use <S-CR> on CUI vim
"hit Enter in normal mode to insert a line break
" nmap <CR> o<Esc>k

inoremap <C-]> <Esc><Right>

set completeopt=menuone,noinsert
" stop new line insertion when completion
inoremap <expr><CR>  pumvisible() ? "<C-y>"  : "<CR>"
inoremap <expr><C-n> pumvisible() ? "<Down>" : "<C-n>"
inoremap <expr><C-p> pumvisible() ? "<Up>"   : "<C-p>"

" compile `.tex` file to PDF automatically
autocmd! BufWritePost *.tex silent! !latexmk %:p
autocmd! BufNewFile *.tex 0r ~/.vim/template/tex.txt

" enable aliases for vim internal shell
set shellcmdflag=-ic

autocmd BufWritePost init.vim source %

inoremap <silent> <A-t> <C-R>=strftime("%y%m%d (%a)\n")<CR>

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif
set rtp+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif
if dein#check_install()
  call dein#install()
endif
"End dein Scripts-------------------------

colorscheme nord
filetype plugin indent on
syntax enable

