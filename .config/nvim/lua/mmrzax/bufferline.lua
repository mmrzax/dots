local signs = require("mmrzax.lsp.diagnostics").signs

signs = {
	error = signs.Error,
	warning = signs.Warn,
	info = signs.Info,
	hint = signs.Hint,
}

local severities = {
	"error",
	"warning",
	-- "info",
	-- "hint",
}

require("bufferline").setup({
	options = {
		mode = "buffers",
		show_buffer_close_icons = false,
		diagnostics = "coc",
		diagnostics_indicator = function(_, _, diag)
			local s = {}
			for _, severity in ipairs(severities) do
				if diag[severity] then
					table.insert(s, signs[severity] .. diag[severity])
				end
			end
			return table.concat(s, " ")
		end,

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
