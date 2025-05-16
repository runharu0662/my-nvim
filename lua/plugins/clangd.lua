return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                clangd = {
                    cmd = { "clangd" }, -- システムにpacmanで入れたものを使用
                    root_dir = require("lspconfig.util").root_pattern("compile_commands.json", ".git"),
                },
            },
        },
    },
}
