call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

"Better Visual Guide
Plug 'Yggdroot/indentLine'

"syntax check
Plug 'w0rp/ale'

"collorschemes
Plug 'morhetz/gruvbox'

"git
Plug 'airblade/vim-gitgutter'

"Insert or delete brackets, parens, quotes in pair
Plug 'jiangmiao/auto-pairs'

call plug#end()

" Configurations Part

"UI configuration
syntax on
syntax enable

" colorscheme
set background=dark

" True Color Support if it's avaiable in terminal
if has("termguicolors")
    set termguicolors
endif

set number

set hidden
set mouse=a
set noshowmode
set noshowmatch
set nolazyredraw

" Search configuration
set ignorecase                    " ignore case when searching
set smartcase                     " turn on smartcase

set incsearch
set hlsearch
set expandtab
set tabstop=2

"mappings

map <C-n> :NERDTreeToggle<CR>
