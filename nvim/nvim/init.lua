require('plugins') -- require packer plugins
require('lsp')
require('treesitter')

vim.wo.number = true -- set line numbers
vim.g.mapleader = " " -- leader space key
vim.cmd [[colorscheme moonfly]] -- color scheme

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.incsearch = true
vim.opt.hlsearch = false
vim.opt.cursorline = true

vim.opt.termguicolors = true

-- fuzzy finding keymap
local builtin = require('telescope.builtin')
local api = require "nvim-tree.api"
vim.keymap.set('n', '<leader>ff', builtin.find_files, {}) -- leader+ff find files
vim.keymap.set('n', '<leader>gf', builtin.git_files, {}) -- leader+gf find git files
vim.keymap.set('v', 'xyy', '"+y<CR>', { silent = true })
vim.keymap.set('n', '<leader>t', api.tree.toggle, {})

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- auto enable spell
vim.cmd [[autocmd FileType markdown setlocal spell]]
vim.cmd [[autocmd FileType gitcommit setlocal spell]]

require("nvim-tree").setup()
