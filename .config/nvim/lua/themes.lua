-- everforest
vim.g.everforest_background = "hard"
vim.g.everforest_enable_italic = false
vim.g.everforest_disable_italic_comment = true
vim.g.everforest_sign_column_background = "none"
vim.g.everforest_diagnostic_text_highlight = false
vim.g.everforest_diagnostic_virtual_text = "colored"
vim.g.everforest_better_performance = true

-- gruvbox
vim.g.gruvbox_italicize_comments = true
vim.g.gruvbox_underline = true
vim.g.gruvbox_bold = true
vim.g.gruvbox_italic = true
vim.g.gruvbox_contrast_dark = "hard"

-- nord
vim.g.nord_cursor_line_number_background = true
vim.g.nord_uniform_status_lines = true
vim.g.nord_bold_vertical_split_line = false
vim.g.nord_uniform_diff_background = true
vim.g.nord_bold = true
vim.g.nord_italic = false
vim.g.nord_italic_comments = false
vim.g.nord_underline = true

-- tokyonight
vim.g.tokyonight_style = "night"
vim.g.tokyonight_terminal_colors = true
vim.g.tokyonight_italic_comments = true
vim.g.tokyonight_italic_keywords = false
vim.g.tokyonight_italic_functions = false
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
require('material').setup({

    contrast = {
        terminal = true, -- Enable contrast for the built-in terminal
        sidebars = true, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
        floating_windows = true, -- Enable contrast for floating windows
        cursor_line = true, -- Enable darker background for the cursor line
        non_current_windows = false, -- Enable darker background for non-current windows
        filetypes = { "terminal", "packer", "qf" }, -- Specify which filetypes get the contrasted (darker) background
    },

    styles = { -- Give comments style such as bold, italic, underline etc.
        comments = { italic = false, bold = false, underline = false, undercurl = false },
        strings = { italic = false, bold = false, underline = false, undercurl = false },
        keywords = { italic = false, bold = false, underline = false, undercurl = false },
        functions = { italic = false, bold = false, underline = false, undercurl = false },
        variables = { italic = false, bold = false, underline = false, undercurl = false },
        operators = { italic = false, bold = false, underline = false, undercurl = false },
        types = { italic = false, bold = false, underline = false, undercurl = false },
    },

    plugins = { -- Uncomment the plugins that you use to highlight them
        -- Available plugins:
        -- "dap",
        -- "dashboard",
        -- "gitsigns",
        -- "hop",
        "indent-blankline",
        -- "lspsaga",
        -- "mini",
        "neogit",
        "nvim-cmp",
        -- "nvim-navic",
        "nvim-tree",
        -- "sneak",
        "telescope",
        -- "trouble",
        "which-key",
    },

    disable = {
        colored_cursor = false, -- Disable the colored cursor
        borders = false, -- Disable borders between verticaly split windows
        background = false, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
        term_colors = false, -- Prevent the theme from setting terminal colors
        eob_lines = false -- Hide the end-of-buffer lines
    },

    high_visibility = {
        lighter = false, -- Enable higher contrast text for lighter style
        darker = false -- Enable higher contrast text for darker style
    },

    lualine_style = "stealth", -- Lualine style ( can be 'stealth' or 'default' )

    async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)

    custom_colors = nil, -- If you want to everride the default colors, set this to a function

    custom_highlights = {}, -- Overwrite highlights with your own
})

vim.cmd("colorscheme carbonfox")
