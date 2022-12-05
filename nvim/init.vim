syntax on

call plug#begin('~/.config/nvim/plugged')
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf'
Plug 'shime/vim-livedown'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" defaults
set number
set incsearch

set softtabstop=2
set tabstop=2
set shiftwidth=2
set autoindent

set nohlsearch
set ignorecase
set smartcase
set scrolloff=8
set signcolumn=yes
set conceallevel=0
set clipboard+=unnamedplus
set cursorline
set mouse=n

set listchars=tab:\|\ 
set list

nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")


let mapleader=' '

" set spell on specific files
autocmd FileType latex,tex,md,markdown,text,gitcommit setlocal spell

colorscheme gruvbox

" Move around splits with space hjkl
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

" system clipboard map
vmap xyy "+y

" fzf
nnoremap <silent> <C-p> :FZF<CR>


" plugins
" Nerdtree
nnoremap <leader>N :NERDTreeToggle<CR>


"COC
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
" https://superuser.com/questions/1734914/neovim-coc-nvim-enter-key-doesnt-work-to-autocomplete
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"


" golang
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
