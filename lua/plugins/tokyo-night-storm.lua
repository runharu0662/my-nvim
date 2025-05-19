-- "AstroNvim/astroui" を削除し、"folke/tokyonight.nvim" に置き換える
return {
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            --  storm, night, day
            style = "storm",
            -- set tranceparent
            transparent = true,
            -- hilights
            on_highlights = function(hl, c)
                hl.Normal = { bg = "NONE" }
                hl.NormalNC = { bg = "NONE" }
                hl.NormalFloat = { bg = "NONE" }
                hl.FloatBorder = { bg = "NONE" }
                -- forneotree
                hl.NeoTreeNormal = { bg = "NONE" }
                hl.NeoTreeNormalNC = { bg = "NONE" }
                hl.NeoTreeEndOfBuffer = { bg = "NONE" }
                hl.NeoTreeCursorLine = { bg = "NONE" }
                hl.NeoTreeWinSeparator = { bg = "NONE" }
            end,
        },
    },
}
