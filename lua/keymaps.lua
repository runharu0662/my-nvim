-- cppファイルの実行
vim.api.nvim_set_keymap('n', '<Space><Space>', ':wa <bar> :QuickRun <stdin.txt<CR>', { noremap = true, silent = true })

-- テンプレートファイルの挿入コマンド
vim.api.nvim_create_user_command('InsTemp', function()
  -- テンプレートファイルの相対パスを指定
  local current_dir = vim.fn.expand('%:p:h')
  local template_path = '~/.config/nvim-astro/template/atc.cpp'


  -- 現在のバッファにテンプレートファイルの内容を挿入
  vim.cmd('0r ' .. template_path)
end, {})

-- Space i t のショートカットに割り当てる
vim.api.nvim_set_keymap('n', '<Space>it', ':InsTemp<CR>', { noremap = true, silent = true })

-- jkでEscを実行する（挿入モード）
vim.api.nvim_set_keymap('i', 'jk', '<Esc>', { noremap = true, silent = true })

--ファイルを作成する
vim.api.nvim_set_keymap('n', '<leader>n', ':NeoTreeCreate<CR>', { noremap = true, silent = true })
--ファイルを削除する
vim.api.nvim_set_keymap('n', '<leader>d', ':NeoTreeDelete<CR>', { noremap = true, silent = true })
--ファイル名を変更する
vim.api.nvim_set_keymap('n', '<leader>r', ':NeoTreeRename<CR>', { noremap = true, silent = true })
