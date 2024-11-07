-- ~/.config/nvim/lua/user/highlights.lua
local colors = {
    background = "#1A1B26", -- plistの Background Color
    foreground = "#BB88F1", -- plistの Foreground Color
    cursor_color = "#B2D2D8", -- plistの Cursor Color
    ansi = {
        "#2B2E3A",
        "#D27B83",
        "#AEFA80",
        "#F7D65B",
        "#9DAAF1",
        "#C792EA",
        "#8AB6F1",
        "#DFDFDF",
    },
    bright_ansi = {
        "#3B3B4A",
        "#E5919B",
        "#BEFC90",
        "#FAD75D",
        "#A5C3F1",
        "#D5A5EA",
        "#9DC6F1",
        "#EFEFEF",
    },
}

return {
    Normal = { fg = colors.foreground, bg = colors.background },
    Cursor = { bg = colors.cursor_color },
    -- Ansiカラー設定
    Ansi0 = { fg = colors.ansi[1] },
    Ansi1 = { fg = colors.ansi[2] },
    Ansi2 = { fg = colors.ansi[3] },
    Ansi3 = { fg = colors.ansi[4] },
    Ansi4 = { fg = colors.ansi[5] },
    Ansi5 = { fg = colors.ansi[6] },
    Ansi6 = { fg = colors.ansi[7] },
    Ansi7 = { fg = colors.ansi[8] },
    -- Bright Ansiカラー設定
    BrightAnsi0 = { fg = colors.bright_ansi[1] },
    BrightAnsi1 = { fg = colors.bright_ansi[2] },
    BrightAnsi2 = { fg = colors.bright_ansi[3] },
    BrightAnsi3 = { fg = colors.bright_ansi[4] },
    BrightAnsi4 = { fg = colors.bright_ansi[5] },
    BrightAnsi5 = { fg = colors.bright_ansi[6] },
    BrightAnsi6 = { fg = colors.bright_ansi[7] },
    BrightAnsi7 = { fg = colors.bright_ansi[8] },
}
