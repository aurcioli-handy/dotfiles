set nocompatible

let mapleader=","

" Filetype-specific indent files and syntax coloring
filetype plugin indent on
syntax on

" Spaces
set shiftwidth=2
set tabstop=2

" Tabs are spaces
set expandtab

" Show linenumber
set nu

" Highlight matching
set showmatch

set autoindent
set showcmd

" Support 256 colors
let &t_Co=256

" vim dispatch config
let test#strategy = 'dispatch'
let g:test#preserve_screen = 1

" colorscheme
colorscheme molokai

call plug#begin('~/.vim/plugged')
  Plug 'kylef/apiblueprint.vim'
  Plug 'janko-m/vim-test'
  Plug 'tpope/vim-dispatch'
call plug#end()

" ctrlp for fuzzy find
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Hotkeys to move between split windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Hotkeys for running tests
nnoremap <leader>t :TestNearest<CR>
nnoremap <leader>T :TestFile<CR>
nnoremap <leader>a :TestSuite<CR>
nnoremap <leader>l :TestLast<CR>
nnoremap <leader>g :TestVisit<CR>

