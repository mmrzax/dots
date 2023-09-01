return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
  },

  {
    "sainnhe/everforest",
  },

  {
    "ellisonleao/gruvbox.nvim",
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      color_overrides = {
        mocha = {
          base = "#000000",
          mantle = "#000000",
          crust = "#000000",
        },
      },
    },
  },

  {
    "mcchrish/zenbones.nvim",
    priority = 1000,
    dependencies = "rktjmp/lush.nvim",
    init = function()
      vim.o.termguicolors = true
      vim.o.background = "dark"
    end,
    config = function()
      local colors_name = "zenwritten"
      -- vim.g[colors_name .. "_compat"] = 1
      vim.g[colors_name] = {
        darkness = "stark",
        -- lightness = "bright",
        -- dim_noncurrent_window = true,
        -- solid_vert_split = true,
        -- solid_line_nr = true,
        -- darken_non_text = 30,
        italic_comments = false,
        -- transparent_background = true,
        -- lighten_cursor_line = 20,
        -- darken_cursor_line = 20,
        -- colorize_diagnostic_underline_text = true,
      }
      -- vim.cmd.colorscheme(colors_name)
    end,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "zenwritten",
    },
  },
}
