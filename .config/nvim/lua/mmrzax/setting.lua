-- main
vim.opt.syntax = "on"
vim.opt.hidden = true
vim.opt.encoding = "utf-8"
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.background = "dark"
vim.opt.cmdheight = 1
vim.opt.showmode = false
vim.opt.updatetime = 50
vim.opt.errorbells = false -- disable Beep or flash screen on errors
vim.opt.visualbell = true -- use visual bell (no beeping)
vim.opt.showtabline = 2
vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true
vim.opt.completeopt="menu"

-- line
vim.opt.number = true
vim.opt.wrap = false
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = true

-- search
vim.opt.hlsearch = false -- disable highlight all search results
vim.opt.smartcase = true -- enable smart-case search
vim.opt.ignorecase = true -- always case-insensitive
vim.opt.incsearch = true -- searches for strings incrementally

-- indent
vim.cmd("filetype plugin indent on")
vim.opt.autoindent = true -- auto-indent new lines
vim.opt.smartindent = true -- enable smart-indent
vim.opt.cindent = true -- for new line indent
-- vim.opt.expandtab = true -- use spaces instead of tabs
vim.opt.shiftwidth = 4 -- when indenting with '>', use 2 spaces width
vim.opt.tabstop = 4 -- show existing tab with 2 spaces width
-- vim.opt.softtabstop = 2 -- number of spaces per Tab
