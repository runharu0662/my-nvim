return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                clangd = {
                    cmd = { "clangd" }, -- PATH が通っていれば省略OK
                    filetypes = { "c", "cpp", "objc", "objcpp" },
                    root_dir = require("lspconfig.util").root_pattern("compile_commands.json", ".git"),
                },
            },
        },
    },
}
