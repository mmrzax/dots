local util = require("util")

util.nnoremap(
	"<leader>ff",
	'<cmd>lua require("telescope.builtin").find_files(require("telescope.themes").get_dropdown({}))<cr>'
)
util.nnoremap(
	"<leader>fgf",
	'<cmd>lua require("telescope.builtin").git_files(require("telescope.themes").get_dropdown({}))<cr>'
)
util.nnoremap(
	"<leader>fgc",
	'<cmd>lua require("telescope.builtin").git_commits(require("telescope.themes").get_ivy({}))<cr>'
)
util.nnoremap(
	"<leader>fgs",
	'<cmd>lua require("telescope.builtin").git_status(require("telescope.themes").get_ivy({}))<cr>'
)
util.nnoremap(
	"<leader>fl",
	'<cmd>lua require("telescope.builtin").live_grep(require("telescope.themes").get_dropdown({}))<cr>'
)
util.nnoremap(
	"<leader>fs",
	'<cmd>lua require("telescope.builtin").grep_string(require("telescope.themes").get_dropdown({}))<cr>'
)
util.nnoremap(
	"<leader>fb",
	'<cmd>lua require("telescope.builtin").buffers(require("telescope.themes").get_dropdown({}))<cr>'
)
util.nnoremap(
	"<leader>ftheme",
	'<cmd>lua require("telescope.builtin").colorscheme(require("telescope.themes").get_cursor({}))<cr>'
)
util.nnoremap(
	"<leader>fts",
	'<cmd>lua require("telescope.treesitter").treesitter(require("telescope.themes").get_dropdown({}))<cr>'
)
