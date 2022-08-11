vim.g.mapleader = " "

local util = require("util")

-- main
util.inoremap("jk", "<ESC>")
util.tnoremap("jk", "<C-\\><C-n>")
util.nnoremap("<leader>`", ":terminal<CR>")
util.nnoremap("<C-s>", ":w<CR>")
util.nnoremap("<C-c>", ":bd<CR>")
util.nnoremap("<C-c>jj", ":bd!<CR>")
util.vnoremap(".", ":norm.<CR>")

-- paste
util.inoremap("<C-p>j", '<C-r>"')
util.inoremap("<C-p>k", "<C-r>*")

-- moving between windows
util.map("", "<leader>h", ":wincmd h<CR>")
util.map("", "<leader>j", ":wincmd j<CR>")
util.map("", "<leader>k", ":wincmd k<CR>")
util.map("", "<leader>l", ":wincmd l<CR>")

-- moving between buffers
--util.nnoremap("<C-l>", ":bnext<CR>")
--util.nnoremap("<C-h>", ":bprev<CR>")
