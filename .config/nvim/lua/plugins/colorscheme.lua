return {
  { "LazyVim/LazyVim", opts = { colorscheme = "gruvbox" } },

  { "andreasvc/vim-256noir" },
  { "rose-pine/neovim", name = "rose-pine" },
  { "sainnhe/everforest" },
  { "ellisonleao/gruvbox.nvim", lazy = false, priority = 2982 },
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
