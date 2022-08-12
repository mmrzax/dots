require("bufferline").setup({
	options = {
		mode = "buffers",
		show_buffer_close_icons = false,
		diagnostics = "coc",
		separator_style = "thick",
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

local key = require("mmrzax.utils").keymap

-- These commands will navigate through buffers in order regardless of which mode you are using
-- e.g. if you change the order of buffers :bnext and :bprevious will not respect the custom ordering
key("n", "<C-l>", ":BufferLineCycleNext<CR>")
key("n", "<C-h>", ":BufferLineCyclePrev<CR>")

-- These commands will move the current buffer backwards or forwards in the bufferline
key("n", "<A-l>", ":BufferLineMoveNext<CR>")
key("n", "<A-h>", ":BufferLineMovePrev<CR>")

-- These commands will sort buffers by directory, language, or a custom criteria
key("n", "<A-e>", ":BufferLineSortByExtension<CR>")
key("n", "<A-d>", ":BufferLineSortByDirectory<CR>")
