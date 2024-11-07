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
