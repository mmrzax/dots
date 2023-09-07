return {
  {
    "folke/lazy.nvim",
    version = "*",
    init = function()
      require("mmrzax.opts")
      require("mmrzax.auto")
      require("mmrzax.keys")
    end,
  },
}
