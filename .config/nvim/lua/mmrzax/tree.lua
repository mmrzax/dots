local key = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }

require("nvim-tree").setup({
  view = {
    -- adaptive_size = true,
    mappings = {
      list = {
        { key = { "l", "<CR>", "2-LeftMouse" }, action = "edit" },
        { key = "L", action = "cd" },
        { key = "b", action = "split" },
        { key = "v", action = "vsplit" },
        { key = "h", action = "close_node" },
        { key = "i", action = "preview" },
        { key = "I", action = "toggle_dotfiles" },
        { key = "R", action = "refresh" },
        { key = "a", action = "create" },
        { key = "D", action = "trash" },
        { key = "df", action = "remove" },
        { key = "r", action = "rename" },
        { key = "dd", action = "cut" },
        { key = "yy", action = "copy" },
        { key = "p", action = "paste" },
        { key = "yn", action = "copy_name" },
        { key = "yp", action = "copy_path" },
        { key = "ya", action = "copy_absolute_path" },
        { key = "-", action = "dir_up" },
        { key = "s", action = "system_open" },
        { key = "q", action = "close" },
      },
    },
  },
})

key("n", "<leader>nn", ":NvimTreeToggle<CR>", default_opts)
