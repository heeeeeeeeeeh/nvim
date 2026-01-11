return {
  "mason-org/mason-lspconfig.nvim",
  event = "VimEnter",
  opts = require("configs.mason-lspconfig.opts"),
  dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
  },
}
