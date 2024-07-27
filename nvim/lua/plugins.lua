return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	-- use 'tomasiser/vim-code-dark'
	use 'Mofiqul/vscode.nvim'
	use 'tpope/vim-commentary'
	use 'tpope/vim-surround'
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}
end)


