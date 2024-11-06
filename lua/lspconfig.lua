local lspconfig = require('lspconfig')

lspconfig.options.clangd {
  cmd = { "clangd", "--std=c++20" },
}

