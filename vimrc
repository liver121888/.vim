scriptencoding utf-8
set encoding=utf8
" a test area with tab and sapce
"	        

"Vundle
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
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


" for airline-show tabline
let g:airline#extensions#tabline#enabled = 1

" for paper color-color overide and highlight syntax
let g:airline_theme='papercolor'
let g:PaperColor_Theme_Options = {
  \   'theme': {
  \     'default.light': {
  \       'override' : {
  \
  \       }
  \     }
  \   },
  \   'language': {
  \     'python': {
  \       'highlight_builtins' : 1
  \     },
  \     'cpp': {
  \       'highlight_standard_library': 1
  \     },
  \     'c': {
  \       'highlight_builtins' : 1
  \     }
  \   }
  \ }


" color configuration
" paperColor setting
set t_Co=256
set background=light
colorscheme PaperColor

" Let vim-figitive-show git branch.
set ttimeoutlen=50
let g:airline_theme = 'powerlineish'
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

" other configuration
set nu
set laststatus=2
set cursorline
set tabstop=8
set shiftwidth=8
set list
set listchars=tab:>-,space:·

" clipboard mapping (vim-gtk3 required)
vmap <C-c> "+y
vmap <C-x> "+c
vmap <C-v> <ESC>"+P
imap <C-v> <ESC>"+pa

" netrw setup
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 1
let g:netrw_altv = 1
let g:netrw_preview = 1
let g:netrw_alto = 1
let g:netrw_winsize = 15
let g:netrw_dirhistmax = 0
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore!
  autocmd VimEnter * wincmd w
augroup END
