require("bufferline").setup({
  -- highlights = require("catppuccin.groups.integrations.bufferline").get(),
  options = {
    numbers = "none",
    show_close_icon = true,
    show_buffer_close_icons = true,
    show_tab_indicators = true,
    diagnostics = "nvim_lsp",
    offsets = {
      {
        filetype = "NvimTree",
        --text = "File Explorer",
        --highlight = "Directory",
        text_align = "center",
      },
    },
  },
})

-- These commands will navigate through buffers in order regardless of which mode you are using
-- e.g. if you change the order of buffers :bnext and :bprevious will not respect the custom ordering
vim.keymap.set("n", "<C-l>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<C-h>", ":BufferLineCyclePrev<CR>")

-- These commands will move the current buffer backwards or forwards in the bufferline
vim.keymap.set("n", "<A-l>", ":BufferLineMoveNext<CR>")
vim.keymap.set("n", "<A-h>", ":BufferLineMovePrev<CR>")

-- These commands will sort buffers by directory, language, or a custom criteria
vim.keymap.set("n", "<A-e>", ":BufferLineSortByExtension<CR>")
vim.keymap.set("n", "<A-d>", ":BufferLineSortByDirectory<CR>")
