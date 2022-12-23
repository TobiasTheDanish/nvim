-- This fil can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use({
		'folke/tokyonight.nvim',
		config = function()
			vim.cmd('colorscheme tokyonight-moon')
		end
	})
	use 'vim-airline/vim-airline'
	
	use 'mbbill/undotree'

	use({ 
		'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'}
	})

end)
