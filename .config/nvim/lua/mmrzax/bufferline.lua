local key = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

require("bufferline").setup({
	options = {
		numbers = "none",
		show_close_icon = false,
		show_buffer_close_icons = false,
		show_tab_indicators = true,
		diagnostics = "nvim_lsp",
		offsets = {
			{
				filetype = "NvimTree",
				--text = "File Explorer",
				--highlight = "Directory",
				text_align = "center",
			},
		},
	},
})

-- These commands will navigate through buffers in order regardless of which mode you are using
-- e.g. if you change the order of buffers :bnext and :bprevious will not respect the custom ordering
key("n", "<C-l>", ":BufferLineCycleNext<CR>", default_opts)
key("n", "<C-h>", ":BufferLineCyclePrev<CR>", default_opts)

-- These commands will move the current buffer backwards or forwards in the bufferline
key("n", "<A-l>", ":BufferLineMoveNext<CR>", default_opts)
key("n", "<A-h>", ":BufferLineMovePrev<CR>", default_opts)

-- These commands will sort buffers by directory, language, or a custom criteria
key("n", "<A-e>", ":BufferLineSortByExtension<CR>", default_opts)
key("n", "<A-d>", ":BufferLineSortByDirectory<CR>", default_opts)
