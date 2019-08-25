" " Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
set encoding=utf-8
set fileencoding=utf-8
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'Lokaltog/vim-powerline'
Plugin 'rizzatti/dash.vim'
Plugin 'mattn/emmet-vim'
Plugin 'othree/html5.vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'leafgarland/typescript-vim'
call vundle#end()            " required
filetype plugin indent on    " required

set nu
set tabstop=2
set shiftwidth=2
let loaded_matchparen = 1
syntax enable
syntax on
set laststatus=2
" cinoptions means public and private keywords indentation
set cinoptions=g-1
set background=dark
set backspace=2

let g:netrw_liststyle = 3
