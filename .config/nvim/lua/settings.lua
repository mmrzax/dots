local indent = 4

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
vim.opt.timeoutlen = 300
vim.opt.errorbells = false -- disable Beep or flash screen on errors
vim.opt.visualbell = true -- use visual bell (no beeping)
vim.opt.showtabline = 2
vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true
vim.opt.completeopt = "menu"
-- vim.opt.clipboard = "unnamedplus" -- sync with system clipboard
-- vim.opt.list = true -- Show some invisible characters (tabs...
vim.opt.guicursor = "a:block"

-- line
vim.opt.number = true
vim.opt.wrap = false
vim.opt.relativenumber = true
vim.opt.cursorline = true
-- vim.opt.cursorcolumn = true

-- search
vim.opt.hlsearch = false -- disable highlight all search results
vim.opt.smartcase = true -- enable smart-case search
vim.opt.ignorecase = true -- always case-insensitive
vim.opt.incsearch = true -- searches for strings incrementally

-- indent
vim.cmd(":filetype indent on")
vim.cmd("filetype plugin indent on")
vim.opt.autoindent = true -- auto-indent new lines
vim.opt.smartindent = true -- enable smart-indent
vim.opt.cindent = true -- for new line indent
-- vim.opt.expandtab = true -- use spaces instead of tabs
vim.opt.shiftwidth = indent -- when indenting with '>', use 2 spaces width
vim.opt.tabstop = indent -- number of spaces tabs count for
-- vim.opt.softtabstop = indent -- number of spaces per Tab
