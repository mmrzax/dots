local util = require("util")

require("nvim-tree").setup()

util.nmap("<leader>nn", ":NvimTreeToggle<CR>")
