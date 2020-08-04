call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

"Python mode
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

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

"Configuration for python mode
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"

" Search configuration
set ignorecase                    " ignore case when searching
set smartcase                     " turn on smartcase
:nnoremap <esc> :noh<return><esc>

set incsearch
set hlsearch
set expandtab
set tabstop=2

"mappings
map <C-n> :NERDTreeToggle<CR>

"block commenting
vmap cc :norm i#<CR>
vmap uc :norm ^x#<CR>
