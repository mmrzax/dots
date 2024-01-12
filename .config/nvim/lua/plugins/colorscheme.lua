return {
  -- { "LazyVim/LazyVim", opts = { colorscheme = "zenwritten" } },

  -- Rose-Pine
  { -- {{{
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      variant = "main",
      dark_variant = "main",
      disable_italics = true,
    },
  }, -- }}}

  -- Nord.nvim
  { -- {{{
    "shaunsingh/nord.nvim",
    init = function()
      vim.g.nord_italic = false
      vim.g.nord_bold = true
    end,
  }, -- }}}

  -- Everforest
  { -- {{{
    "sainnhe/everforest",
  }, -- }}}

  -- Gruvbox
  { -- {{{
    "ellisonleao/gruvbox.nvim",
    opts = {
      undercurl = true,
      underline = true,
      bold = false,
      italic = {
        strings = false,
        comments = false,
        operators = false,
        folds = false,
      },
      strikethrough = true,
      invert_selection = false,
      invert_signs = false,
      invert_tabline = false,
      invert_intend_guides = false,
      inverse = true, -- invert background for search, diffs, statuslines and errors
      contrast = "hard", -- can be "hard", "soft" or empty string
      palette_overrides = {},
      overrides = {},
      dim_inactive = false,
      transparent_mode = false,
    },
  }, -- }}}

  -- Zenbones
  { -- {{{
    "mcchrish/zenbones.nvim",
    dependencies = "rktjmp/lush.nvim",
    config = function()
      local variant = "zenwritten"
      vim.g[variant] = {
        italic_comments = false,
        darkness = "stark",
        -- lightness = "bright",
      }
      -- vim.cmd.colorscheme(variant)
    end,
  }, -- }}}

  -- Nordic
  { -- {{{
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nordic").load()
    end,
  }, -- }}}
}
