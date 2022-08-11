local key = require("mmrzax.utils").keymap

require("nvim-tree").setup()

key("n", "<leader>nn", ":NvimTreeToggle<CR>", { noremap = false })
