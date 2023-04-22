local M = {}

function M.setup()
  local whichkey = require("which-key")
  local ts_keys = require("mmrzax.telescope").keymap

  local conf = {
    window = {
      border = "single", -- none, single, double, shadow
      position = "bottom", -- bottom, top
    },
  }

  local opts = {
    mode = "n", -- Normal mode
    prefix = "<leader>",
    buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
    silent = false, -- use `silent` when creating keymaps
    noremap = true, -- use `noremap` when creating keymaps
    nowait = false, -- use `nowait` when creating keymaps
  }

  local mappings = {
    ["w"] = { "<cmd>update!<CR>", "Save" },
    ["qq"] = { "<cmd>q!<CR>", "Quit" },

    b = {
      name = "Buffer",
      c = { "<Cmd>bd!<Cr>", "Close current buffer" },
      D = { "<Cmd>%bd|e#|bd#<Cr>", "Delete all buffers" },
    },

    z = {
      name = "Packer",
      c = { "<cmd>PackerCompile<cr>", "Compile" },
      C = { "<cmd>PackerClean<cr>", "Clean" },
      i = { "<cmd>PackerInstall<cr>", "Install" },
      s = { "<cmd>PackerSync<cr>", "Sync" },
      S = { "<cmd>PackerStatus<cr>", "Status" },
      u = { "<cmd>PackerUpdate<cr>", "Update" },
    },

    g = {
      name = "Git",
      s = { "<cmd>Neogit<CR>", "Status" },
    },

    a = {
      name = "Jupynium",
      a = {
        name = "Attach",
        s = {":JupyniumStartAndAttachToServer<Space>", "Start & Attach"},
        a = {":JupyniumAttachToServer<Space>", "Attach"},
      },
      s = {
        name = "Sync",
        s = {":JupyniumStartSync<Space>", "Start Sync"},
        S = {"<cmd>JupyniumStopSync<CR>", "Stop Sync"},
      },
      l = {
        name = "Load",
        l = {":JupyniumLoadFromIpynbTab<Space>", "Load"},
        s = {":JupyniumLoadFromIpynbTabAndStartSync<Space>", "Load & Sync" },
      },

    },

    t = ts_keys,
  }

  whichkey.setup(conf)
  whichkey.register(mappings, opts)
end

return M
