return {
  "github/copilot.vim",
  lazy = false,  -- プラグインを常にロード
  config = function()
    -- Copilot のデフォルト設定をカスタマイズ
    vim.g.copilot_enabled = 1  -- デフォルトで有効にする
    vim.g.copilot_no_tab_map = true  -- Copilot のTabマッピングを有効にする

    -- キーマッピングの例 (オン/オフをトグルする)
    vim.api.nvim_create_user_command('ToggleCopilot', function()
      if vim.g.copilot_enabled == 1 then
        vim.cmd('Copilot disable')
        vim.g.copilot_enabled = 0
        print('Copilot disabled')
      else
        vim.cmd('Copilot enable')
        vim.g.copilot_enabled = 1
        print('Copilot enabled')
      end
    end, {})

    -- Copilot のトグルをキーに割り当てる (例: <leader>cp)
    vim.api.nvim_set_keymap('n', '<leader>cp', ':ToggleCopilot<CR>', { noremap = true, silent = true })
  end
}

