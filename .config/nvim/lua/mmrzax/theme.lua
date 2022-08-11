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

-- vim.cmd('colorscheme tokyonight')
require("tokyonight").colorscheme()
