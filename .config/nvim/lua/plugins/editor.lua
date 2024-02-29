return {
  -- Neogit
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "nvim-telescope/telescope.nvim", -- optional
      "sindrets/diffview.nvim", -- optional
      "ibhagwan/fzf-lua", -- optional
    },
    config = true,
    cmd = { "Neogit" },
    keys = {
      { "<leader>gn", "<cmd>Neogit<cr>", desc = "NeoGit (Root)" },
      { "<leader>gN", "<cmd>Neogit cwd=%:p:h<cr>", desc = "NeoGit (CWD)" },
    },
    opts = {
      -- Change the default way of opening neogit
      kind = "vsplit",

      -- Change the default way of opening the commit popup
      commit_popup = {
        kind = "split",
      },

      -- Change the default way of opening popups
      popup = {
        kind = "split",
      },

      sections = {
        sequencer = {
          folded = true,
          hidden = false,
        },
        untracked = {
          folded = true,
          hidden = false,
        },
        unstaged = {
          folded = true,
          hidden = false,
        },
        staged = {
          folded = true,
          hidden = false,
        },
        stashes = {
          folded = true,
          hidden = false,
        },
        unpulled_upstream = {
          folded = true,
          hidden = false,
        },
        unmerged_upstream = {
          folded = true,
          hidden = false,
        },
        unpulled_pushRemote = {
          folded = true,
          hidden = false,
        },
        unmerged_pushRemote = {
          folded = true,
          hidden = false,
        },
        recent = {
          folded = true,
          hidden = false,
        },
        rebase = {
          folded = true,
          hidden = false,
        },
      },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {

      window = {
        mappings = {
          ["l"] = "open",
          ["h"] = "open",
        },
      },
    },
  },
}
