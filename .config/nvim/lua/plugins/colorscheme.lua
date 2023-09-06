return {
  { "andreasvc/vim-256noir" },
  { "rose-pine/neovim", name = "rose-pine" },
  { "sainnhe/everforest" },
  { "ellisonleao/gruvbox.nvim" },
  {
    "mcchrish/zenbones.nvim",
    dependencies = "rktjmp/lush.nvim",
    config = function()
      local variant = "rosebones"
      vim.g[variant] = {
        italic_comments = false,
        darkness = "stark",
        -- lightness = "bright",
      }
      vim.cmd.colorscheme(variant)
    end,
  },
}
