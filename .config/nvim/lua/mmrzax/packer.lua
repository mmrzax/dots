return require("packer").startup(function()
	use({ "wbthomason/packer.nvim" })

	-- use({ "neovim/nvim-lspconfig" })

	use({ "neoclide/coc.nvim", branch = "release" })

	use({ "nvim-treesitter/nvim-treesitter" })

	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x", requires = { "nvim-lua/plenary.nvim" } })

	use({ "kyazdani42/nvim-tree.lua", requires = { "kyazdani42/nvim-web-devicons" } })

	use({ "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons", opt = true } })

	use({ "akinsho/bufferline.nvim", tag = "v2.*", requires = { "kyazdani42/nvim-web-devicons" } })

	use({ "sainnhe/everforest" })

	use({ "morhetz/gruvbox" })

	use({ "arcticicestudio/nord-vim" })

	use({ "folke/tokyonight.nvim" })

	use({ "marko-cerovac/material.nvim" })

	use({ "numToStr/Comment.nvim" })

	use({ "ray-x/go.nvim", requires = { "ray-x/guihua.lua" } })

	use({ "tpope/vim-fugitive" })
end)
