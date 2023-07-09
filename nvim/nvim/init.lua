require('plugins') -- require packer plugins
vim.wo.number = true -- set line numbers
vim.g.mapleader = " " -- leader space key
vim.cmd [[colorscheme moonfly]] -- color scheme


-- fuzzy finding keymap
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {}) -- leader+ff find files
vim.keymap.set('n', '<leader>gf', builtin.git_files, {}) -- leader+gf find git files
