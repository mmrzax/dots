return {
  { "LazyVim/LazyVim", opts = { colorscheme = "gruvbox" } },

  { "andreasvc/vim-256noir" },
  { "rose-pine/neovim", name = "rose-pine" },
  { "sainnhe/everforest" },
  {
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 2982,
    opts = {
      undercurl = true,
      underline = true,
      bold = true,
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
  },
  {
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
  },
}
