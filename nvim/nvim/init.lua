require('plugins') -- require packer plugins
vim.wo.number = true -- set line numbers
vim.g.mapleader = " " -- leader space key
vim.cmd [[colorscheme moonfly]] -- color scheme


-- plugins keymap
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {}) -- leader+ff find files
