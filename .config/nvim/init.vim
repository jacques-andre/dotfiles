syntax on

" execute "set t_8f=\e[38;2;%lu;%lu;%lum"
" execute "set t_8b=\e[48;2;%lu;%lu;%lum"

call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'rakr/vim-one'
Plug 'Yggdroot/indentLine'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & npm install'  }
call plug#end()

" Tab settings set ruler
set number
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

set termguicolors
colorscheme one
set background=dark

" User Commands
command Py execute "!python3 %" 
nnoremap S :%s//g<Left><Left>

" Cursor
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul
" autocmd VimLeave * call system('printf "\e[5 q" > $TTY')
" au VimLeave * call nvim_cursor_set_shape("vertical-bar")

if exists('+termguicolors')
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
