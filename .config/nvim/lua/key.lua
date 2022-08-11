vim.g.mapleader = " "

local key = require("mmrzax.utils").keymap

-- main
key("i", "jk", "<ESC>")
key("t", "jk", "<C-\\><C-n>")
key("n", "<leader>`", ":terminal<CR>")
key("n", "<C-s>", ":w<CR>")
key("n", "<C-c>", ":bd<CR>")
key("n", "<C-c>jj", ":bd!<CR>")
key("v", ".", ":norm.<CR>")

-- paste
key("i", "<C-p>j", '<C-r>"')
key("i", "<C-p>k", "<C-r>*")

-- moving between windows
key("", "<leader>h", ":wincmd h<CR>", { noremap = false })
key("", "<leader>j", ":wincmd j<CR>", { noremap = false })
key("", "<leader>k", ":wincmd k<CR>", { noremap = false })
key("", "<leader>l", ":wincmd l<CR>", { noremap = false })

-- moving between buffers
--util.nnoremap("<C-l>", ":bnext<CR>")
--util.nnoremap("<C-h>", ":bprev<CR>")
