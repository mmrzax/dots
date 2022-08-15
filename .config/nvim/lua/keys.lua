local key = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

vim.g.mapleader = " "

-- main
key("i", "jk", "<ESC>", default_opts)
key("t", "jk", "<C-\\><C-n>", default_opts)
key("n", "<Tab>", "<C-w>w", default_opts)
key("n", "<leader>`", ":terminal<CR>", default_opts)
key("n", "<C-s>", ":w<CR>", default_opts)
key("n", "<C-c>", ":bd<CR>", default_opts)
key("n", "<C-c>jj", ":bd!<CR>", default_opts)
key("v", ".", ":norm.<CR>", default_opts)

-- paste
-- key("i", "<C-p>j", '<C-r>"', default_opts)
-- key("i", "<C-p>k", "<C-r>*", default_opts)

-- moving between windows
key("", "<leader>h", ":wincmd h<CR>", default_opts)
key("", "<leader>j", ":wincmd j<CR>", default_opts)
key("", "<leader>k", ":wincmd k<CR>", default_opts)
key("", "<leader>l", ":wincmd l<CR>", default_opts)

-- moving between buffers
-- key("n", "<C-l>", ":bnext<CR>", default_opts)
-- key("n", "<C-h>", ":bprev<CR>", default_opts)

-- resize panes
key("n", "<Left>", ":vertical resize +1<CR>", default_opts)
key("n", "<Right>", ":vertical resize -1<CR>", default_opts)
key("n", "<Up>", ":resize -1<CR>", default_opts)
key("n", "<Down>", ":resize +1<CR>", default_opts)
