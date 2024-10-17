-- cppファイルの実行
vim.keymap.set('n', "<leader>i", "<Nop>", { noremap = true, silent = true, desc = "about cpp" })
vim.keymap.set('n', '<Space>i<Space>', ':wa <bar> :QuickRun <stdin.txt<CR>', { noremap = true, silent = true, desc = "cpp QuickRun" })

-- テンプレートファイルの挿入コマンド
vim.api.nvim_create_user_command('InsTemp', function()
  -- テンプレートファイルのパスを指定
  local template_path = '~/.config/nvim-astro/template/atc.cpp'

  -- テンプレートファイルの内容を現在のバッファに挿入
  vim.cmd('0r ' .. template_path)
end, {})

-- Space i t のショートカットに割り当てる
vim.keymap.set('n', '<Space>it', ':InsTemp<CR>', { noremap = true, silent = true, desc = "Insert cpp Template" })

-- jkでEscを実行する（挿入モード）
vim.keymap.set('i', 'jk', '<Esc>', { noremap = true, silent = true })

return {
  n = {
    -- resize
    ["<A-l>"] = { ":vertical resize +2<CR>" },
    ["<A-h>"] = { ":vertical resize -2<CR>" },
    ["<A-j>"] = { ":resize -2<CR>" },
    ["<A-k>"] = { ":resize +2<CR>" },
    ["<A-=>"] = { "<C-w>=", desc = "Resize equal" },
    -- split
    ["<A-v>"] = { "<C-w>v", desc = "Split window vertically" },
    ["<A-s>"] = { "<C-w>s", desc = "Split window horizontally" },
  
    -- terminal
    ["<A-i>"] = { "<cmd>ToggleTerm direction=float<cr>", desc = "Toggle floating terminal" },
    ["<A-H>"] = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", desc = "Toggle horizontal terminal" },
    ["<A-V>"] = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", desc = "Toggle vertical terminal" },
  },  
  t = {
    ["<A-i>"] = { "<cmd>ToggleTerm direction=float<cr>", desc = "toggle floating terminal" },
    ["<A-H>"] = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", desc = "toggle horizontal terminal" },
    ["<A-V>"] = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", desc = "toggle vertical terminal" },
  },
}
