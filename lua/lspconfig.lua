local lspconfig = require("lspconfig")

lspconfig.clangd.setup({
  settings = {
    clangd = {
      fallbackFlags = { "--std=c++20" },
    },
  },
  init_options = {
    clangdFileStatus = true,
  },
})

