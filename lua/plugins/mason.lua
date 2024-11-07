return {
    --[[
    -- use mason-lspconfig to configure LSP installations
    {
        "jay-babu/mason-lspconfig.nvim",
        -- overrides `require("mason-lspconfig").setup(...)`
        opts = {
            ensure_installed = {
                "clangd",
                "eslint",
                "ltex",
                "grammarly",
                -- add more arguments for adding more LSP servers
            },
        },
    },
    -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
    {
        "jay-babu/mason-null-ls.nvim",
        -- overrides `require("mason-null-ls").setup(...)`
        opts = {
            ensure_installed = {
                "stylua",
                -- add more arguments for adding more null-ls sources
            },
        },
    },
    {
        "jay-babu/mason-nvim-dap.nvim",
        -- overrides `require("mason-nvim-dap").setup(...)`
        opts = {
            ensure_installed = {
                "python",
                -- add more arguments for adding more debuggers
            },
        },
    },
    --]]
    {
        "jay-babu/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup {
                ensure_installed = { "clangd", "eslint", "ltex" },
                automatic_installation = true,
                setup_handlers = {
                    function(server) require("lspconfig")[server].setup {} end,
                    ["clangd"] = function()
                        require("lspconfig").clangd.setup {
                            -- 必要なら追加設定
                            on_attach = function(client, bufnr)
                                -- 追加の on_attach 設定
                            end,
                            cmd = { "clangd" }, -- "--std=c++20" は削除
                        }
                    end,
                },
            }
        end,
    },
    -- mason-null-ls の設定
    {
        "jay-babu/mason-null-ls.nvim",
        opts = {
            ensure_installed = { "stylua" },
        },
    },
    -- mason-nvim-dap の設定
    {
        "jay-babu/mason-nvim-dap.nvim",
        opts = {
            ensure_installed = { "python" },
        },
    },
}
