require("mason-lspconfig").setup_handlers {
    function(server_name) require("lspconfig")[server_name].setup {} end,
    ["clangd"] = function()
        require("lspconfig").clangd.setup {
            cmd = { "clangd", "--std=c++20" },
        }
    end,
}
