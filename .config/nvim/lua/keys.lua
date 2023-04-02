local key = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

vim.g.mapleader = " "

-- main
key("i", "jk", "<ESC>", default_opts)
key("t", "jk", "<C-\\><C-n>", default_opts)
key("n", "<Tab>", "<C-w>w", default_opts)
key("n", "<leader>`", ":terminal<CR>", default_opts)

key("v", "J", ":m '>+1<CR>gv=gv", default_opts)
key("v", "K", ":m '<-2<CR>gv=gv", default_opts)

key("n", "J", "mzJ`z", default_opts)

key("n", "n", "nzzzv", default_opts)
key("n", "N", "Nzzzv", default_opts)

key("x", "<leader>p", [["_dP]], default_opts)
key("n", "<leader>y", [["+y]], default_opts)
key("v", "<leader>y", [["+y]], default_opts)
-- key("n", "<leader>Y", [["+Y]], default_opts)
key("v", "<leader>d", [["_d]], default_opts)
key("n", "<leader>d", [["_d]], default_opts)
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- key("v", ".", ":norm.<CR>", default_opts)

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
