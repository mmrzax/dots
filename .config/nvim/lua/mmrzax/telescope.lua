local key = require("mmrzax.utils").keymap

key(
	"n",
	"<leader>ff",
	'<cmd>lua require("telescope.builtin").find_files(require("telescope.themes").get_dropdown({}))<cr>'
)
key(
	"n",
	"<leader>fgf",
	'<cmd>lua require("telescope.builtin").git_files(require("telescope.themes").get_dropdown({}))<cr>'
)
key(
	"n",
	"<leader>fgc",
	'<cmd>lua require("telescope.builtin").git_commits(require("telescope.themes").get_ivy({}))<cr>'
)
key("n", "<leader>fgs", '<cmd>lua require("telescope.builtin").git_status(require("telescope.themes").get_ivy({}))<cr>')
key(
	"n",
	"<leader>fl",
	'<cmd>lua require("telescope.builtin").live_grep(require("telescope.themes").get_dropdown({}))<cr>'
)
key(
	"n",
	"<leader>fs",
	'<cmd>lua require("telescope.builtin").grep_string(require("telescope.themes").get_dropdown({}))<cr>'
)
key(
	"n",
	"<leader>fb",
	'<cmd>lua require("telescope.builtin").buffers(require("telescope.themes").get_dropdown({}))<cr>'
)
key(
	"n",
	"<leader>ftheme",
	'<cmd>lua require("telescope.builtin").colorscheme(require("telescope.themes").get_cursor({}))<cr>'
)
key(
	"n",
	"<leader>fts",
	'<cmd>lua require("telescope.treesitter").treesitter(require("telescope.themes").get_dropdown({}))<cr>'
)
