require("neogit").setup({

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

  -- Setting any section to `false` will make the section not render at all
  sections = {
    untracked = {
      folded = true
    },
    unstaged = {
      folded = true
    },
    staged = {
      folded = true
    },
    stashes = {
      folded = true
    },
    unpulled = {
      folded = true
    },
    unmerged = {
      folded = true
    },
    recent = {
      folded = true
    },
  },

})
