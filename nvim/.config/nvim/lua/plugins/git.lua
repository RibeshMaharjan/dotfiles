return {
  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      local gitsigns = require("gitsigns")
      local set = vim.keymap.set
      gitsigns.setup()

      set("n", "]c", function()
        gitsigns.nav_hunk("next")
      end, { desc = "Move to next hunk" })

      set("n", "[c", function()
        gitsigns.nav_hunk("prev")
      end, { desc = "Move to previous hunk" })

      set("n", "<leader>hp", gitsigns.preview_hunk, { desc = "Preview hunk" })
      set("n", "<leader>hi", gitsigns.preview_hunk_inline, { desc = "Preview hunk inline" })
    end,
  },
}
