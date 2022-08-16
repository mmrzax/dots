local M = {}

function M.setup()
  -- indicate first time installation
  local packer_bootstrap = false

  -- packer.nvim configuration
  local conf = {
    profile = {
      enable = true,
      threshold = 0, -- the amount in ms that a plugins load time must be over for it to be included in the profile
    },
    display = {
      open_fn = function()
        return require("packer.util").float({ border = "rounded" })
      end,
    },
  }

  -- check if packer.nvim is installed
  -- run PackerCompile if there are changes in this file
  local function packer_init()
    local fn = vim.fn
    local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
    if fn.empty(fn.glob(install_path)) > 0 then
      packer_bootstrap = fn.system({
        "git",
        "clone",
        "--depth",
        "1",
        "https://github.com/wbthomason/packer.nvim",
        install_path,
      })
      vim.cmd([[packadd packer.nvim]])
    end
    vim.cmd("autocmd BufWritePost plugins.lua source <afile> | PackerCompile")
  end

  -- Plugins
  local function plugins(use)
    use({ "wbthomason/packer.nvim" })

    use({
      "neovim/nvim-lspconfig",
      as = "nvim-lspconfig",
      config = function()
        require("mmrzax.lspconfig")
      end,
    })

    -- use { "neoclide/coc.nvim", branch = "release",
    -- 	config = function() require("mmrzax.coc") end, }

    use({
      "nvim-treesitter/nvim-treesitter",
      as = "nvim-treesitter",
      event = "BufRead",
      opt = true,
      run = ":TSUpdate",
      config = function()
        require("mmrzax.treesitter")
      end,
    })

    use({
      "nvim-telescope/telescope.nvim",
      branch = "0.1.x",
      requires = { "nvim-lua/plenary.nvim" },
      config = function()
        require("mmrzax.telescope")
      end,
    })

    use({
      "kyazdani42/nvim-tree.lua",
      requires = { "kyazdani42/nvim-web-devicons" },
      event = "BufWinEnter",
      config = function()
        require("mmrzax.tree")
      end,
    })

    use({
      "nvim-lualine/lualine.nvim",
      requires = { "kyazdani42/nvim-web-devicons" },
      after = "nvim-treesitter",
      config = function()
        require("mmrzax.lualine")
      end,
    })

    use({
      "akinsho/bufferline.nvim",
      tag = "v2.*",
      requires = { "kyazdani42/nvim-web-devicons" },
      config = function()
        require("mmrzax.bufferline")
      end,
    })

    use({
      "TimUntersberger/neogit",
      requires = "nvim-lua/plenary.nvim",
      cmd = "Neogit",
      config = function()
        require("mmrzax.neogit")
      end,
    })

    use({
      "numToStr/Comment.nvim",
      opt = true,
      keys = { "gc", "gb", "gcc", "gbc" },
      config = function()
        require("Comment").setup({})
      end,
    })

    use({
      "ray-x/go.nvim",
      requires = { "ray-x/guihua.lua" },
      ft = "go",
      config = function()
        require("go").setup()
      end,
    })

    use({
      "folke/which-key.nvim",
      event = "VimEnter",
      config = function()
        require("mmrzax.whichkey").setup()
      end,
    })

    use({ "lukas-reineke/indent-blankline.nvim", event = "BufReadPre" })

    use({ "nvim-lua/plenary.nvim", module = "plenary" })

    use({
      "kyazdani42/nvim-web-devicons",
      module = "nvim-web-devicons",
      config = function()
        require("nvim-web-devicons").setup({ default = true })
      end,
    })

    use({ "sainnhe/everforest", opt = true })

    use({ "morhetz/gruvbox", opt = true })

    use({ "arcticicestudio/nord-vim", opt = true })

    use({ "folke/tokyonight.nvim", opt = true })

    use({ "marko-cerovac/material.nvim" })

    if packer_bootstrap then
      print("RESTART NEOVIM REQUIRED AFTER INSTALLATION!")
      require("packer").sync()
    end
  end

  packer_init()

  local packer = require("packer")
  packer.init(conf)
  packer.startup(plugins)
end

return M
