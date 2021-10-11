set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'nanotech/jellybeans.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdtree'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'airblade/vim-gitgutter' " vim with git status(added, modified, and removed lines)
Plugin 'tpope/vim-fugitive' " vim with git command(e.g., Gdiff)
Plugin 'vim-airline/vim-airline' " vim status bar
Plugin 'vim-airline/vim-airline-themes'
Plugin 'blueyed/vim-diminactive'

call vundle#end()

set t_Co=256

" for jellybeans
colorscheme jellybeans

" for NERDTree
nmap <F3> :NERDTreeToggle<CR>

" for taglist
nmap <F4> :Tagbar<CR>

" for indent guide
let g:indentguides_spacechar = '┆'
let g:indentguides_tabchar = '|'
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1

" for vim-airline
let g:airline#extensions#tabline#enabled = 1 " turn on buffer list
let g:airline_theme='hybrid'
set laststatus=2 " turn on bottom bar
let mapleader = ","
nnoremap <leader>q :bp<CR>
nnoremap <leader>w :bn<CR>

" for blueyed/vim-diminactive
let g:diminactive_enable_focus = 1

syntax enable
filetype indent on
highlight Comment term=bold cterm=bold ctermfg=4

" Syntax Highlighting
if has("syntax")
	syntax on
endif

" Show title
set title

" Show match bracket
set showmatch

" Auto complete
set wmnu

" Autoindentation
set ai
set si
set cindent

" Show line number
set nu

" Set Tab width
set expandtab
set softtabstop=4
set tabstop=4
set shiftwidth=4

" Highlighting search
set hlsearch

" Show cursor location
set ruler

" Move cursor mouse
set mouse=a

" find string
set ignorecase

" Set cursor location is last modify
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g'\"" |
\ endif
