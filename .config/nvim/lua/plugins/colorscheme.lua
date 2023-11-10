return {
  { "LazyVim/LazyVim", opts = { colorscheme = "zenbones" } },

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

  -- No-Clown-Fiesta
  { -- {{{
    "aktersnurra/no-clown-fiesta.nvim",
    opts = {
      transparent = false,
      styles = {
        comments = { italic = true, bold = false },
        keywords = { italic = false, bold = true },
        functions = { italic = false, bold = false },
        variables = { italic = false, bold = false },
        type = { bold = true },
        lsp = { underline = true },
      },
    },
  }, -- }}}
}
