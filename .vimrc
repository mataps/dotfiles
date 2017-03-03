set t_Co=256
set nocompatible              " be iMproved, required
filetype off                  " required

filetype indent plugin on
syntax on

setlocal autoindent
setlocal smartindent

set clipboard+=unnamed

set backspace=2 " make backspace work like most other apps
set backspace=indent,eol,start

set timeout timeoutlen=5000 ttimeoutlen=100

"set dir=~/.vimswap//,/var/tmp//,/tmp//,.
set undodir=~/.vim/.undo//
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//

" Disable ERROR bells
set noerrorbells
set vb t_vb=

" save marks
set viminfo='100,f1

set incsearch
set hlsearch



" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" --------- Theming --------------------------
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'flazz/vim-colorschemes'

" --------- Version Control ------------------
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" --------- HTML Emmet like ------------------
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Plugin 'craigemery/vim-autotag'
" Plugin 'xolox/vim-easytags'


" -------- Project/File Search  -------------
Plugin 'scrooloose/nerdtree'
" Plugin 'Shougo/neomru.vim'
" Plugin 'Shougo/unite.vim'
" Plugin 'Shougo/unite-outline'
" Plugin 'Shougo/vimfiler.vim'
Plugin 'Shougo/vimproc.vim', { 'do': 'make' }
Plugin 'Shougo/neocomplete.vim'
" Plugin 'rstacruz/vim-fastunite'
" Plugin 'tsukkee/unite-tag'
" Plugin 'tpope/vim-vinegar'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tomtom/tcomment_vim'

" -------- file detect indent plugin ---------
Plugin 'tpope/vim-sleuth'

" Plugin 'scrooloose/syntastic'

" -------- Syntax ----------------------------
Plugin 'othree/html5.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'

Plugin 'tpope/vim-unimpaired'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'dfrunza/vim'

Plugin 'editorconfig/editorconfig-vim'
Plugin 'jacoborus/tender'
Plugin 'easymotion/vim-easymotion'

" ------- Selection --------------------------
Plugin 'terryma/vim-expand-region'


map <C-p> [unite]p

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set background=dark
colorscheme PaperColor


" colorscheme perfect
" hi Comment    ctermbg=LightGrey   gui=none

" Function to include folders to source
function! SourceConfig()
	let path = $HOME  . '/.vim/setup'

	let file_list = split(globpath(path, '*.vimrc'), '\n')

	for file in file_list
		execute 'source' fnameescape(file)
	endfor
endfunction

call SourceConfig()
