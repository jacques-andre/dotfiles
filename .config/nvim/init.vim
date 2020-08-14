syntax on

call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'chriskempson/base16-vim'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }
call plug#end()

" Tab settings set ruler
set number
set cursorline
set smartindent
set noswapfile
set expandtab
set shiftwidth=2
set autowrite
set softtabstop=2
set tabstop=2
set nohlsearch
set ignorecase

set wildmode=longest,list,full
set wildmenu
set nobackup noswapfile nowritebackup            " disable backup/swap files
set undofile undodir=~/.vim/undo undolevels=9999 " undo options
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " Stop auto commenting
let mapleader=' '                                " leader key
set splitright                                   " splits the new tab on the right
let g:indentLine_setConceal = 0

" Move around splits with space hjkl
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

let base16colorspace=256  " Access colors present in 256 colorspace
set termguicolors
colorscheme base16-classic-dark
" colorscheme base16-black-metal-immortal

" User Commands
command Py execute "!python3 %" 
nnoremap S :%s//g<Left><Left>

" Nerd Tree
map <C-n> :NERDTreeToggle<CR>

" COC
source ~/.config/nvim/coc.vim
