vim.opt.expandtab = true -- use spaces instead of tabs

vim.api.nvim_exec([[ autocmd BufWritePre *.py :silent! lua vim.lsp.buf.format() ]], false)
