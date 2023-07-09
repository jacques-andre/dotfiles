require('plugins') -- require packer plugins
require('lsp')

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
vim.keymap.set('n', '<leader>ff', builtin.find_files, {}) -- leader+ff find files
vim.keymap.set('n', '<leader>gf', builtin.git_files, {}) -- leader+gf find git files
vim.keymap.set('v', 'xyy', '"+y<CR>', { silent = true })
