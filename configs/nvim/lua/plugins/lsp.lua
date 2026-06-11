return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      gdscript = {},
      csharpier = {
        mason = false,
      },
      omnisharp = {
        mason = false,
      },
    },
  },
}
