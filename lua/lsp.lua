require("lspconfig").clangd.setup {
    cmd = { "clangd" }, -- pacmanから入れたものが /usr/bin/clangd にあればOK
}
