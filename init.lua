-- This file simply bootstraps the installation of Lazy.nvim and then calls other files for execution
-- This file doesn't necessarily need to be touched, BE CAUTIOUS editing this file and proceed at your own risk.
local lazypath = vim.env.LAZY or vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.env.LAZY or (vim.uv or vim.loop).fs_stat(lazypath)) then
  -- stylua: ignore
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", "--branch=stable", lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- validate that lazy is available
if not pcall(require, "lazy") then
  -- stylua: ignore
  vim.api.nvim_echo({ { ("Unable to load lazy from: %s\n"):format(lazypath), "ErrorMsg" }, { "Press any key to exit...", "MoreMsg" } }, true, {})
  vim.fn.getchar()
  vim.cmd.quit()
end

-- Key mapping
vim.api.nvim_set_keymap('n', '<Space><Space>', ':wa <bar> :QuickRun <stdin.txt<CR>', { noremap = true, silent = true })

-- QuickRun configuration
vim.cmd([[
    let g:quickrun_config = {}

    " when you run a cpp file, measure the execution time
    let g:quickrun_config['cpp'] = {
    \  'cmdopt' : '-std=c++20 -Wall',
    \  'hook/time/enable' : 1
    \}

    let g:quickrun_config['_'] = {
    \  'split' : 'vertical'
    \}
    set splitright
]]) 

vim.api.nvim_create_user_command('InsTemp', function()
  -- 現在のファイルのディレクトリパスを取得して、テンプレートファイルの相対パスを指定
  local current_dir = vim.fn.expand('%:p:h')
  local template_path = current_dir .. '/template/atc.cpp'

  -- 現在のバッファにテンプレートファイルの内容を挿入
  vim.cmd('0r ' .. template_path)
end, {})

require "lazy_setup"
require "polish"
