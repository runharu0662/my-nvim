return {
  "github/copilot.vim",
  lazy = false,  -- プラグインを常にロード
  config = function()
    vim.g.copilot_no_tab_map =  true -- タブキーを無効にする

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

    local keymap = vim.keymap.set

    keymap("i", "<C-g>", 'copilot#Accept("<CR>")', { silent = true, expr = true, script = true, replace_keycodes = false })
    keymap("i", "<C-j>", "<Plug>(copilot-next)")
    keymap("i", "<C-k>", "<Plug>(copilot-previous)")
    keymap("i", "<C-o>", "<Plug>(copilot-dismiss)")
    keymap("i", "<C-s>", "<Plug>(copilot-suggest)")

    -- Copilot のトグルをキーに割り当てる (例: <leader>cp)
    vim.api.nvim_set_keymap('n', '<leader>cp', ':ToggleCopilot<CR>', { noremap = true, silent = true })
  end
}
