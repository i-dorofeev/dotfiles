set nocompatible							" be iMproved, required by Vundle
filetype off								" required by Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'altercation/vim-colors-solarized'
Plugin 'chrisbra/histwin.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'jreybert/vimagit'

call vundle#end()							" required
filetype plugin indent on					" required

set enc=utf-8
set fileencoding=utf-8
set backspace=2

inoremap <C-х> <Esc>
noremap о j
noremap р h
noremap л k
noremap д l
noremap вв dd
noremap ц w
noremap у e
noremap с c
noremap и b
noremap к r
noremap К R
noremap Ж :
noremap ч x
noremap г u
noremap ш i
noremap Ш I
noremap ф a
noremap Ф A
noremap щ o
noremap Щ O

" easier switch from insert mode to normal mode
inoremap jj <ESC>
inoremap оо <ESC>

" easier split navigation
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

let mapleader=","

set hidden
set autowrite
highlight SpecialKey guifg=#7c5a22

set listchars=tab:>-
set list

set tabstop=4
set shiftwidth=4

set nowrap

set relativenumber
set noswapfile

" ctrl-p https://stackoverflow.com/questions/21346068/slow-performance-on-ctrlp-it-doesnt-work-to-ignore-some-folders
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
	let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

map <Leader>b :CtrlPBuffer<CR>
map <Leader>t :NERDTree<CR>
