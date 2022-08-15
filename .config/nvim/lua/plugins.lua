local M = {}

function M.setup()
  -- indicate first time installation
  local packer_bootstrap = false

  -- packer.nvim configuration
  local conf = {
    display = {
      open_fn = function()
        return require("packer.util").float { border = "rounded" }
      end,
    },
  }

  -- check if packer.nvim is installed
  -- run PackerCompile if there are changes in this file
  local function packer_init()
    local fn = vim.fn
    local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
      packer_bootstrap = fn.system {
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
      }
      vim.cmd [[packadd packer.nvim]]
    end
    vim.cmd "autocmd BufWritePost plugins.lua source <afile> | PackerCompile"
  end

  -- Plugins
  local function plugins(use)

    use { "wbthomason/packer.nvim" }

    use { "neovim/nvim-lspconfig",
      config = function() require("mmrzax.lspconfig") end, }

    -- use { "neoclide/coc.nvim", branch = "release",
    -- 	config = function() require("mmrzax.coc") end, }

    use { "nvim-treesitter/nvim-treesitter",
      config = function() require("mmrzax.treesitter") end, }

    use { "nvim-telescope/telescope.nvim", branch = "0.1.x", requires = { "nvim-lua/plenary.nvim" },
      config = function() require("mmrzax.telescope") end, }

    use { "kyazdani42/nvim-tree.lua", requires = { "kyazdani42/nvim-web-devicons" },
      config = function() require("mmrzax.tree") end, }

    use { "nvim-lualine/lualine.nvim", requires = { "kyazdani42/nvim-web-devicons", opt = true },
      config = function() require("mmrzax.lualine") end, }

    use { "akinsho/bufferline.nvim", tag = "v2.*", requires = { "kyazdani42/nvim-web-devicons" },
      config = function() require("mmrzax.bufferline") end, }

    use { "TimUntersberger/neogit", requires = "nvim-lua/plenary.nvim",
      config = function() require("mmrzax.neogit") end, }

    use { "numToStr/Comment.nvim",
      config = function() require("Comment").setup() end, }

    use { "ray-x/go.nvim", requires = { "ray-x/guihua.lua" },
      config = function() require("go").setup() end, }

    use { "folke/which-key.nvim",
      config = function() require("mmrzax.whichkey").setup() end, }

    use { "lukas-reineke/indent-blankline.nvim" }

    use { "sainnhe/everforest" }

    use { "morhetz/gruvbox" }

    use { "arcticicestudio/nord-vim" }

    use { "folke/tokyonight.nvim" }

    use { "marko-cerovac/material.nvim" }

    if packer_bootstrap then
      print "RESTART NEOVIM REQUIRED AFTER INSTALLATION!"
      require("packer").sync()
    end
  end

  packer_init()

  local packer = require("packer")
  packer.init(conf)
  packer.startup(plugins)
end

return M
