-- "AstroNvim/astroui" を削除し、"folke/tokyonight.nvim" に置き換える
return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            -- お好みのテーマスタイルを指定 (例: storm, night, day)
            style = "storm",
            -- 背景を透明に設定
            transparent = true,
            -- ハイライトのカスタマイズオプション
            on_highlights = function(hl, c)
                hl.Normal = { bg = "NONE" }
                hl.NormalNC = { bg = "NONE" }
                hl.NormalFloat = { bg = "NONE" }
                hl.FloatBorder = { bg = "NONE" }
                -- NeoTree用のハイライト設定
                hl.NeoTreeNormal = { bg = "NONE" }
                hl.NeoTreeNormalNC = { bg = "NONE" }
                hl.NeoTreeEndOfBuffer = { bg = "NONE" }
                hl.NeoTreeCursorLine = { bg = "NONE" }
                hl.NeoTreeWinSeparator = { bg = "NONE" }
            end,
        },
    },
}
-- AstroUI provides the basis for configuring the AstroNvim User Interface
--[[
-- Configuration documentation can be found with `:h astroui`
-- NOTE: We highly recommend setting up the Lua Language Server (`:LspInstall lua_ls`)
--       as this provides autocomplete and documentation while editing

---@type LazySpec
return {
    "AstroNvim/astroui",
    ---@type AstroUIOpts
    opts = {
        -- change colorscheme
        colorscheme = "astrodark",
        -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
        highlights = {
            init = {
                Normal = { bg = "NONE" }, -- 通常の背景透過
                NormalNC = { bg = "NONE" }, -- 分割ウィンドウ用の背景透過
                -- Neo-tree 関連のハイライトグループ
                NeoTreeNormal = { bg = "NONE" }, -- Neo-treeの背景透過
                NeoTreeNormalNC = { bg = "NONE" },
                NeoTreeEndOfBuffer = { bg = "NONE" },
                NeoTreeCursorLine = { bg = "NONE" },
                NeoTreeWinSeparator = { bg = "NONE" },
                NormalFloat = { bg = "NONE" }, -- 浮動ウィンドウの背景透過
                FloatBorder = { bg = "NONE" }, -- 浮動ウィンドウの枠の背景透過
            },

            astrodark = {
                Normal = { bg = "NONE" },
                NormalNC = { bg = "NONE" },
                NeoTreeNormal = { bg = "NONE" },
                NeoTreeNormalNC = { bg = "NONE" },
                NeoTreeEndOfBuffer = { bg = "NONE" },
                NeoTreeCursorLine = { bg = "NONE" },
                NeoTreeWinSeparator = { bg = "NONE" },
                NormalFloat = { bg = "NONE" }, -- astrodarkテーマでも floatterm を透過
                FloatBorder = { bg = "NONE" }, -- 枠の背景透過
            },
            
            
        },

        -- Icons can be configured throughout the interface
        icons = {
            -- configure the loading of the lsp in the status line
            LSPLoading1 = "⠋",
            LSPLoading2 = "⠙",
            LSPLoading3 = "⠹",
            LSPLoading4 = "⠸",
            LSPLoading5 = "⠼",
            LSPLoading6 = "⠴",
            LSPLoading7 = "⠦",
            LSPLoading8 = "⠧",
            LSPLoading9 = "⠇",
            LSPLoading10 = "⠏",
        },
    },
}
]]
--
