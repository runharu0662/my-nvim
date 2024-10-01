return {
  {
    "epwalsh/obsidian.nvim",
    version = "*",  -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",
    dependencies = {
      -- Required.
      "nvim-lua/plenary.nvim",
    },
    opts = {
      workspaces = {
        {
          name = "personal",
          path = "~/Documents/Obsidian Vaults",
        },
        {
          name = "work",
          path = "~/vaults/work",
        },
      },
      -- conceallevelを設定してUI機能を有効化
      conceallevel = 1,  -- or set to 2 based on your preference
      ui = {
        enable = true,  -- UI機能を有効化したい場合
      },
    },
    local cmds = {
      "ObsidianBacklinks",
      "ObsidianCheck",
      "ObsidianFollowLink",
      "ObsidianLink",
      "ObsidianLinkNew",
      "ObsidianNew",
      "ObsidianOpen",
      "ObsidianPasteImg",
      "ObsidianQuickSwitch",
      "ObsidianRename",
      "ObsidianSearch",
      "ObsidianTemplate",
      "ObsidianToday",
      "ObsidianTomorrow",
      "ObsidianWorkspace",
      "ObsidianYesterday",
    }
    config = function()
      -- conceallevelの設定をVimに適用
      vim.opt.conceallevel = 1

      -- gfマッピングを上書きし、説明を追加
      vim.keymap.set('n', 'gf', function()
        return require('obsidian').util.gf_passthrough()
      end, { noremap = false, expr = true, buffer = true, desc = "Go to Obsidian link" })
    end,
  },
  {
    "oflisback/obsidian-bridge.nvim",
    opts = {
      scroll_sync = true
    }
  }
}

