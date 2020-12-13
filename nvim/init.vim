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
filetype plugin indent on
syntax enable
colorscheme lucario
"End dein Scripts-------------------------

set encoding=utf-8

set number        " show line numbers
set ignorecase    " ignore cASe when search
set smartcase     " consider UPPERCASE when search
set wrapscan      " wrap scan when search
set hls           " high light search results
set ttimeoutlen=100

set tabstop=2  " 
set shiftwidth=0  " follow tabstop
set softtabstop=-1  " follow shiftwidth
set expandtab
set autoindent        " insert same amount of indent on new line
set smartindent       " insert adjusted amount of indent

" w!! to save file as root
cmap w!! w !sudo tee > /dev/null %

" <S-Tab> for inverse tab
" for normal mode
nnoremap <S-Tab> <<
" for insert mode
inoremap <S-tab> <C-d>

" complement file path in insert mode
" inoremap <TAB><TAB> <C-x><C-f>

autocmd FileType python setlocal tabstop=4 shiftwidth=0 expandtab

let mapleader = "\<Space>"

"change split orientations
set splitbelow
set splitright

"nmap <S-CR> O<Esc>  " looking for how to use <S-CR> on CUI vim
"hit Enter in normal mode to insert a line break
nmap <CR> o<Esc>k    

inoremap <C-]> <Esc><Right>

set completeopt=menuone,noinsert
" stop new line insertion when completion
inoremap <expr><CR>  pumvisible() ? "<C-y>"  : "<CR>"
inoremap <expr><C-n> pumvisible() ? "<Down>" : "<C-n>"
inoremap <expr><C-p> pumvisible() ? "<Up>"   : "<C-p>"

" toggle NERDTree with <C-e>
nnoremap <silent><C-e> :NERDTreeToggle<CR>

