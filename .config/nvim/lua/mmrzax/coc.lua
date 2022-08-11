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

vim.api.nvim_set_keymap("i", "<c-space>", "coc#refresh()", { noremap = true, silent = true, expr = true })

vim.api.nvim_set_keymap("n", "<leader>rn", "<Plug>(coc-rename)", { noremap = false })

-- use K to show documentation in preview window
-- vim.cmd([[
-- nnoremap <silent> K :call <SID>show_documentation()<CR>
-- function! s:show_documentation()
--     if (index(['vim','help'], &filetype) >= 0)
--     execute 'h '.expand('<cword>')
--     else
--     call CocAction('doHover')
--     endif
-- endfunction
-- ]])
