require('plugins')
-- Enable syntax highlighting
vim.cmd 'syntax on'

-- Defaults
vim.wo.number = true -- Enable line numbers
vim.o.incsearch = true -- Incremental search

-- Indentation settings
vim.o.softtabstop = 2
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.autoindent = true
vim.o.expandtab = true -- Convert tabs to spaces

-- Search settings
vim.o.hlsearch = false -- Disable highlighting search results
vim.o.ignorecase = true -- Case-insensitive searching...
vim.o.smartcase = true -- ...unless search includes uppercase letters
vim.o.scrolloff = 8
vim.wo.signcolumn = 'yes'
vim.wo.conceallevel = 0
vim.o.clipboard = 'unnamedplus'

-- Leader key
vim.g.mapleader = ' '

-- Mappings for moving around splits using space + hjkl
vim.api.nvim_set_keymap('n', '<leader>h', ':wincmd h<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>j', ':wincmd j<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>k', ':wincmd k<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>l', ':wincmd l<CR>', {noremap = true})

-- Mapping for system clipboard
vim.api.nvim_set_keymap('v', 'xyy', '"+y', {noremap = true})

vim.opt.termguicolors = true
vim.cmd.colorscheme('codedark')
