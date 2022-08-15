-- everforest
vim.g.everforest_background = "hard"
vim.g.everforest_enable_italic = false
vim.g.everforest_disable_italic_comment = false
vim.g.everforest_transparent_background = false
vim.g.everforest_sign_column_background = "grey"
vim.g.everforest_diagnostic_text_highlight = false
vim.g.everforest_better_performance = true

-- gruvbox
vim.g.gruvbox_italicize_comments = true
vim.g.gruvbox_underline = true
vim.g.gruvbox_bold = true
vim.g.gruvbox_italic = true
vim.g.gruvbox_contrast_dark = "hard"

-- nord
vim.g.nord_italic_comments = true
vim.g.nord_italic = true
vim.g.nord_underline = true
vim.g.nord_bold_vertical_split_line = true
vim.g.nord_cursor_line_number_background = true
vim.g.nord_uniform_status_lines = true
vim.g.nord_uniform_diff_background = true

-- tokyonight
vim.g.tokyonight_style = "night"
vim.g.tokyonight_terminal_colors = true
vim.g.tokyonight_italic_comments = true
vim.g.tokyonight_italic_keywords = true
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_italic_variables = false
vim.g.tokyonight_transparent = false
vim.g.tokyonight_hide_inactive_statusline = false
vim.g.tokyonight_sidebars = { "NvimTree", "coc-explorer", "packer", "terminal" }
vim.g.tokyonight_transparent_sidebar = false
vim.g.tokyonight_dark_sidebar = true
vim.g.tokyonight_dark_float = true
vim.g.tokyonight_colors = {}
vim.g.tokyonight_day_brightness = 0.3
vim.g.tokyonight_lualine_bold = true

-- material
vim.g.material_style = "deep ocean"
require("material").setup({

  contrast = {
    sidebars = true, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
    floating_windows = true, -- Enable contrast for floating windows
    line_numbers = false, -- Enable contrast background for line numbers
    sign_column = false, -- Enable contrast background for the sign column
    cursor_line = true, -- Enable darker background for the cursor line
    non_current_windows = false, -- Enable darker background for non-current windows
    popup_menu = false, -- Enable lighter background for the popup menu
  },

  italics = {
    comments = true, -- Enable italic comments
    keywords = true, -- Enable italic keywords
    functions = false, -- Enable italic functions
    strings = false, -- Enable italic strings
    variables = false, -- Enable italic variables
  },

  contrast_filetypes = { -- Specify which filetypes get the contrasted (darker) background
    "terminal", -- Darker terminal background
    "packer", -- Darker packer background
    "qf", -- Darker qf list background
  },

  high_visibility = {
    lighter = false, -- Enable higher contrast text for lighter style
    darker = false, -- Enable higher contrast text for darker style
  },

  disable = {
    colored_cursor = false, -- Disable the colored cursor
    borders = false, -- Disable borders between verticaly split windows
    background = false, -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
    term_colors = false, -- Prevent the theme from setting terminal colors
    eob_lines = false, -- Hide the end-of-buffer lines
  },

  lualine_style = "stealth", -- Lualine style ( can be 'stealth' or 'default' )

  async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)

  custom_highlights = {}, -- Overwrite highlights with your own

  plugins = { -- Here, you can disable(set to false) plugins that you don't use or don't want to apply the theme to
    trouble = true,
    nvim_cmp = true,
    neogit = true,
    gitsigns = true,
    git_gutter = true,
    telescope = true,
    nvim_tree = true,
    sidebar_nvim = true,
    lsp_saga = true,
    nvim_dap = true,
    nvim_navic = true,
    which_key = true,
    sneak = true,
    hop = true,
    indent_blankline = true,
    nvim_illuminate = true,
    mini = true,
  },
})
vim.cmd("colorscheme material")
