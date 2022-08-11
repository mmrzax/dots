require("bufferline").setup({
	options = {
		mode = "buffers",
		show_close_icon = true,
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

local util = require("util")

-- These commands will navigate through buffers in order regardless of which mode you are using
-- e.g. if you change the order of buffers :bnext and :bprevious will not respect the custom ordering
util.nnoremap("<C-l>", ":BufferLineCycleNext<CR>")
util.nnoremap("<C-h>", ":BufferLineCyclePrev<CR>")

-- These commands will move the current buffer backwards or forwards in the bufferline
util.nnoremap("<A-l>", ":BufferLineMoveNext<CR>")
util.nnoremap("<A-h>", ":BufferLineMovePrev<CR>")

-- These commands will sort buffers by directory, language, or a custom criteria
util.nnoremap("<A-e>", ":BufferLineSortByExtension<CR>")
util.nnoremap("<A-d>", ":BufferLineSortByDirectory<CR>")
