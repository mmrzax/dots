local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
	packer_bootstrap = fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
	vim.cmd [[packadd packer.nvim]]
end

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

return require("packer").startup(function(use)

	use { "wbthomason/packer.nvim" }

	use { "neovim/nvim-lspconfig", config = function() require("mmrzax.lspconfig") end, }

	-- use { "neoclide/coc.nvim", branch = "release", config = function() require("mmrzax.coc") end, }

	use { "nvim-treesitter/nvim-treesitter", config = function() require("mmrzax.treesitter") end, }

	use { "nvim-telescope/telescope.nvim", branch = "0.1.x", requires = { "nvim-lua/plenary.nvim" },
		config = function() require("mmrzax.telescope") end, }

	use { "kyazdani42/nvim-tree.lua", requires = { "kyazdani42/nvim-web-devicons" },
		config = function() require("mmrzax.tree") end, }

	use { "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons", opt = true },
		config = function() require("mmrzax.lualine") end, }

	use { "akinsho/bufferline.nvim", tag = "v2.*", requires = { "kyazdani42/nvim-web-devicons" },
		config = function() require("mmrzax.bufferline") end, }

	use { "numToStr/Comment.nvim", config = function() require("mmrzax.comment") end, }

	use { "ray-x/go.nvim", requires = { "ray-x/guihua.lua" }, config = function() require("mmrzax.go") end, }

	use { "tpope/vim-fugitive" }

	use { "lukas-reineke/indent-blankline.nvim" }

	use { "sainnhe/everforest" }

	use { "morhetz/gruvbox" }

	use { "arcticicestudio/nord-vim" }

	use { "folke/tokyonight.nvim" }

	use { "marko-cerovac/material.nvim" }

	-- Automatically set up your configuration after cloning packer.nvim
	if packer_bootstrap then
		require('packer').sync()
	end

end)
