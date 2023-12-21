vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

	use 'wbthomason/packer.nvim'

	use({"nvim-treesitter/nvim-treesitter"})

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

    use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }

	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}

    use({
		'rose-pine/neovim',
		as = 'rose-pine',
	})

    use('theprimeagen/harpoon')

end)
