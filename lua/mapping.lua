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

-- 行の折り返し

vim.opt.wrap = true
vim.opt.linebreak = true
