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
"End dein Scripts-------------------------

set encoding=utf-8

set number        " show line numbers
set ignorecase    " ignore case when search
set smartcase     " consider UPPERCASE when search
set wrapscan      " wrap scan when search
set hls           " high light search results
set ttimeoutlen=100

set expandtab
set tabstop=2     " 
set shiftwidth=2  " width of tabs
set softtabstop=2
set autoindent
set smartindent   " indent automatically

let mapleader = "\<Space>"

