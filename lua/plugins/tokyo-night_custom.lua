return {
    {
        "folke/tokyonight.nvim",
        name = "custom_tokyonight",
        lazy = false,
        priority = 1000,
        opts = {
            style = "storm",
            transparent = true, -- 透過を有効に設定
            on_highlights = function(hl, c)
                -- 背景を透過に設定
                hl.Normal = { bg = "NONE" }
                hl.NormalNC = { bg = "NONE" }
                hl.NormalFloat = { bg = "NONE" }
                hl.FloatBorder = { bg = "NONE" }

                -- NeoTree用の透過設定
                hl.NeoTreeNormal = { bg = "NONE" }
                hl.NeoTreeNormalNC = { bg = "NONE" }
                hl.NeoTreeEndOfBuffer = { bg = "NONE" }
                hl.NeoTreeCursorLine = { bg = "NONE" }
                hl.NeoTreeWinSeparator = { bg = "NONE" }

                -- ANSIカラー設定
                hl.Ansi0 = { fg = "#2C2712" }
                hl.Ansi1 = { fg = "#E24D4A" }
                hl.Ansi2 = { fg = "#00BD4F" }
                hl.Ansi3 = { fg = "#E2B054" }
                hl.Ansi4 = { fg = "#5293DB" }
                hl.Ansi5 = { fg = "#9F4FDA" }
                hl.Ansi6 = { fg = "#5FBFDF" }
                hl.Ansi7 = { fg = "#CBCBCE" }
                hl.Ansi8 = { fg = "#656865" }
                hl.Ansi9 = { fg = "#E05252" }
                hl.Ansi10 = { fg = "#77A066" }
                hl.Ansi11 = { fg = "#C2C854" }
                hl.Ansi12 = { fg = "#6FA5E3" }
                hl.Ansi13 = { fg = "#A166A7" }
                hl.Ansi14 = { fg = "#A3DEDC" }
                hl.Ansi15 = { fg = "#E8E8EE" }

                -- plist設定の追加
                hl.Background = { bg = "#1A1B26" }
                hl.Foreground = { fg = "#BB88F1" }
                hl.CursorColor = { fg = "#B2D2D8" }
                hl.SelectionColor = { bg = "#453F34" }
                hl.TabColor = { bg = "#1F1D2A" }
            end,
        },
    },
}
