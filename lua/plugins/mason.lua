
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = {
          "lua_ls",
          "bashls",
          "clangd",
          "cmake",
          "cssls",
          "dockerls",
          "docker_compose_language_service",
          "gopls",
          "html",
          "jsonls",
          "tsserver",
          "marksman",
          "nimls",
          "pylsp",
        }
      }

      -- Automatically set up LSP configurations with custom options for clangd
      require("mason-lspconfig").setup_handlers {
        function(server_name)
          local opts = {}
          if server_name == "clangd" then
            opts = {
              cmd = { "clangd", "--std=c++20" }  -- set C++ standard to C++20
            }
          end
          require("lspconfig")[server_name].setup(opts)
        end,
      }
    end
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
}

