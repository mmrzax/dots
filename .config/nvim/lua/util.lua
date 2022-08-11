local M = {}

function M.map(mode, key, cmd)
	vim.api.nvim_set_keymap(mode, key, cmd, { noremap = false, silent = true })
end

function M.noremap(mode, key, cmd)
	vim.api.nvim_set_keymap(mode, key, cmd, { noremap = true, silent = true })
end

function M.nmap(key, cmd)
	M.map("n", key, cmd)
end

function M.imap(key, cmd)
	M.map("i", key, cmd)
end

function M.vmap(key, cmd)
	M.map("v", key, cmd)
end

function M.tmap(key, cmd)
	M.map("t", key, cmd)
end

function M.nnoremap(key, cmd)
	M.noremap("n", key, cmd)
end

function M.inoremap(key, cmd)
	M.noremap("i", key, cmd)
end

function M.vnoremap(key, cmd)
	M.noremap("v", key, cmd)
end

function M.tnoremap(key, cmd)
	M.noremap("t", key, cmd)
end

return M
