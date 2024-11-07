require("lspconfig").clangd.setup {
    cmd = { "clangd", "--clang-tidy", "--header-insertion=never", "--completion-style=detailed" },
    settings = {
        diagnostics = {
            suppress = { "unused-includes" },
        },
    },
}
