require("lspconfig").clangd.setup {
    cmd = { "clangd", "--std=c++20" },
}
