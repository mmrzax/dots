-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.g.mapleader = " "

-- use jk instead of ESC in insert and terminal mode
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("t", "jk", "<C-\\><C-n>")

-- I don't know but i want this
vim.keymap.set("n", "<Tab>", "<C-w>w")

-- Ommmmm sometimes it's hard to write :terminal
vim.keymap.set("n", "<leader>`", ":terminal<CR>")

-- move highlighted lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- please don't move cursor when i use J
vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- best keymaps in the Universe
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]], { remap = true })
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- vim.keymap.set("v", ".", ":norm.<CR>")

-- moving between windows
-- vim.keymap.set("", "<leader>h", ":wincmd h<CR>")
-- vim.keymap.set("", "<leader>j", ":wincmd j<CR>")
-- vim.keymap.set("", "<leader>k", ":wincmd k<CR>")
-- vim.keymap.set("", "<leader>l", ":wincmd l<CR>")

-- moving between buffers
-- vim.keymap.set("n", "<C-l>", ":bnext<CR>")
-- vim.keymap.set("n", "<C-h>", ":bprev<CR>")

-- resize panes
vim.keymap.set("n", "<Left>", ":vertical resize +1<CR>")
vim.keymap.set("n", "<Right>", ":vertical resize -1<CR>")
vim.keymap.set("n", "<Up>", ":resize -1<CR>")
vim.keymap.set("n", "<Down>", ":resize +1<CR>")
