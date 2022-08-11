-- automatically ensure that packer.nvim is installed
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({
		"git",
		"clone",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	execute("packadd packer.nvim")
end

return require("packer").startup(function()
	-- packer itself
	use({ "wbthomason/packer.nvim" })

	use({
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("mmrzax.treesitter")
		end,
	})

	use({
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		requires = { { "nvim-lua/plenary.nvim" } },
		config = function()
			require("mmrzax.telescope")
		end,
	})

	use({
		"neoclide/coc.nvim",
		branch = "release",
		config = function()
			require("mmrzax.coc")
		end,
	})

	use({ "tpope/vim-fugitive" })

	use({
		"kyazdani42/nvim-tree.lua",
		requires = { "kyazdani42/nvim-web-devicons" },
		config = function()
			require("mmrzax.tree")
		end,
	})

	use({
		"folke/tokyonight.nvim",
		config = function()
			require("mmrzax.theme")
		end,
	})

	use({
		"morhetz/gruvbox",
		config = function()
			require("mmrzax.theme")
		end,
	})

	use({
		"sainnhe/everforest",
		config = function()
			require("mmrzax.theme")
		end,
	})

	use({
		"arcticicestudio/nord-vim",
		config = function()
			require("mmrzax.theme")
		end,
	})

	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
		config = function()
			require("mmrzax.lualine")
		end,
	})

	use({
		"akinsho/bufferline.nvim",
		tag = "v2.*",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("mmrzax.bufferline")
		end,
	})
end)
