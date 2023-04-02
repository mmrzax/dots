local M = {}

M.keymap = {
  name = "Telescope",
  ["f"] = {
    '<cmd>lua require("telescope.builtin").find_files(require("telescope.themes").get_dropdown({}))<cr>',
    "Find_Files",
  },
  ["gf"] = {
    '<cmd>lua require("telescope.builtin").git_files(require("telescope.themes").get_dropdown({}))<cr>',
    "Git_Files",
  },
  ["c"] = {
    '<cmd>lua require("telescope.builtin").git_commits(require("telescope.themes").get_ivy({}))<cr>',
    "Git_Commits",
  },
  ["gs"] = {
    '<cmd>lua require("telescope.builtin").git_status(require("telescope.themes").get_ivy({}))<cr>',
    "Git_Status",
  },
  ["l"] = {
    '<cmd>lua require("telescope.builtin").live_grep(require("telescope.themes").get_dropdown({}))<cr>',
    "Live_Grep",
  },
  ["s"] = {
    '<cmd>lua require("telescope.builtin").grep_string(require("telescope.themes").get_dropdown({}))<cr>',
    "Grep_String",
  },
  ["b"] = {
    '<cmd>lua require("telescope.builtin").buffers(require("telescope.themes").get_dropdown({}))<cr>',
    "Buffers",
  },
  ["m"] = {
    '<cmd>lua require("telescope.builtin").colorscheme(require("telescope.themes").get_cursor({}))<cr>',
    "Colorscheme",
  },
  ["t"] = {
    '<cmd>lua require("telescope.builtin").treesitter(require("telescope.themes").get_dropdown({}))<cr>',
    "Treesitter",
  },
}

return M
