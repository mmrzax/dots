local key = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

key(
	"n",
	"<leader>ff",
	'<cmd>lua require("telescope.builtin").find_files(require("telescope.themes").get_dropdown({}))<cr>',
	default_opts
)
key(
	"n",
	"<leader>fgf",
	'<cmd>lua require("telescope.builtin").git_files(require("telescope.themes").get_dropdown({}))<cr>',
	default_opts
)
key(
	"n",
	"<leader>fgc",
	'<cmd>lua require("telescope.builtin").git_commits(require("telescope.themes").get_ivy({}))<cr>',
	default_opts
)
key(
	"n",
	"<leader>fgs",
	'<cmd>lua require("telescope.builtin").git_status(require("telescope.themes").get_ivy({}))<cr>',
	default_opts
)
key(
	"n",
	"<leader>fl",
	'<cmd>lua require("telescope.builtin").live_grep(require("telescope.themes").get_dropdown({}))<cr>',
	default_opts
)
key(
	"n",
	"<leader>fs",
	'<cmd>lua require("telescope.builtin").grep_string(require("telescope.themes").get_dropdown({}))<cr>',
	default_opts
)
key(
	"n",
	"<leader>fb",
	'<cmd>lua require("telescope.builtin").buffers(require("telescope.themes").get_dropdown({}))<cr>',
	default_opts
)
key(
	"n",
	"<leader>ftheme",
	'<cmd>lua require("telescope.builtin").colorscheme(require("telescope.themes").get_cursor({}))<cr>',
	default_opts
)
key(
	"n",
	"<leader>fts",
	'<cmd>lua require("telescope.builtin").treesitter(require("telescope.themes").get_dropdown({}))<cr>',
	default_opts
)
