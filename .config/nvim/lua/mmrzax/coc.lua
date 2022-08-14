local key = require("mmrzax.utils").keymap

vim.g.coc_node_path = os.getenv("NODE_PATH")

vim.g.coc_global_extensions = {
	"coc-yaml",
	"coc-deno",
	"coc-json",
	"coc-html",
}

key("i", "<c-space>", "coc#refresh()", { expr = true })

key("n", "<leader>rn", "<Plug>(coc-rename)", { noremap = false })

key("n", "[g", "<Plug>(coc-diagnostic-prev)", { noremap = false })

key("n", "]g", "<Plug>(coc-diagnostic-next)", { noremap = false })

key("n", "gd", "<Plug>(coc-definition)", { noremap = false })

key("n", "gy", "<Plug>(coc-type-definition)", { noremap = false })

key("n", "gi", "<Plug>(coc-implementation)", { noremap = false })

key("n", "gr", "<Plug>(coc-references)", { noremap = false })

key("x", "<leader>f", "<Plug>(coc-format-selected)", { noremap = false })

key("n", "<leader>f", "<Plug>(coc-format)", { noremap = false })

key("n", "K", ":call ShowDocumentation()<CR>")


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
