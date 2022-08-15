local key = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

vim.g.coc_node_path = os.getenv("NODE_PATH")

vim.g.coc_global_extensions = {
	"coc-yaml",
	"coc-deno",
	"coc-json",
	"coc-html",
}

key("i", "<c-space>", "coc#refresh()", expr_opts)

key("n", "<leader>rn", "<Plug>(coc-rename)", default_opts)

key("n", "[g", "<Plug>(coc-diagnostic-prev)", default_opts)

key("n", "]g", "<Plug>(coc-diagnostic-next)", default_opts)

key("n", "gd", "<Plug>(coc-definition)", default_opts)

key("n", "gy", "<Plug>(coc-type-definition)", default_opts)

key("n", "gi", "<Plug>(coc-implementation)", default_opts)

key("n", "gr", "<Plug>(coc-references)", default_opts)

key("x", "<leader>f", "<Plug>(coc-format-selected)", default_opts)

key("n", "<leader>f", "<Plug>(coc-format)", default_opts)

key("n", "K", ":call ShowDocumentation()<CR>", default_opts)


vim.cmd([[
autocmd CursorHold * silent call CocActionAsync('highlight')
]])

vim.cmd([[
function! ShowDocumentation()
	if CocAction('hasProvider', 'hover')
		call CocActionAsync('doHover')
	else
		call feedkeys('K', 'in')
	endif
endfunction
]])
