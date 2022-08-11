local key = require("mmrzax.utils").keymap

vim.g.coc_node_path = os.getenv("NODE_PATH")

vim.g.coc_global_extensions = {
	"coc-yaml",
	"coc-tsserver",
	"coc-json",
	"coc-html",
	"coc-sumneko-lua",
	"coc-stylua",
}

-- highlight the symbol and its references when holding the cursor
vim.api.nvim_create_autocmd("CursorHold", {
	command = 'silent call CocActionAsync("highlight")',
})

key("i", "<c-space>", "coc#refresh()", { expr = true })

key("n", "<leader>rn", "<Plug>(coc-rename)", { noremap = false })

-- use K to show documentation in preview window.
key("n", "K", ":call ShowDocumentation()<CR>")
vim.cmd([[
function! ShowDocumentation()
	if CocAction('hasProvider', 'hover')
		call CocActionAsync('doHover')
	else
		call feedkeys('K', 'in')
	endif
endfunction
]])
