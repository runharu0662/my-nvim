require("lspconfig").ccls.setup {
    init_options = {
        cache = {
            directory = "/tmp/ccls",
        },
        completion = {
            filterAndSort = false,
        },
    },
}
require("lspconfig").clangd.setup {
    cmd = { "clangd", "--std=c++20" },
    settings = {},
}
