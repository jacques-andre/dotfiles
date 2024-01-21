syntax on
" defaults
set number
set incsearch

set softtabstop=2
set tabstop=2
set shiftwidth=2
set autoindent
set expandtab

set nohlsearch
set ignorecase
set smartcase
set scrolloff=8
set signcolumn=yes
set conceallevel=0
set clipboard+=unnamedplus

let mapleader=' '

" Move around splits with space hjkl
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

" system clipboard map
vmap xyy "+y
