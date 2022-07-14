syntax on

call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'shime/vim-livedown'
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'chrisbra/csv.vim'
Plug 'junegunn/goyo.vim'
Plug 'sjl/badwolf'
Plug 'fatih/vim-go'
Plug 'ryanoasis/vim-devicons'
call plug#end()

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

colorscheme badwolf

" Move around splits with space hjkl
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

" system clipboard map
vmap xyy "+y


" plugins
" Nerdtree
nnoremap <leader>N :NERDTreeToggle<CR>

"COC
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" set spell on specific files
autocmd FileType latex,tex,md,markdown,text,gitcommit setlocal spell

set mouse=n

" golang
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
