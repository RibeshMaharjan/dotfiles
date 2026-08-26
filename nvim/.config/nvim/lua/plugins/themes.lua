return {
  -- Catppuccin

  --   name = "catppuccin",
  --   priority = 1000,
  --   opts = {
  --     flavour = "mocha",
  --     transparent_background = true,
  --   },
  --   config = function()
  --     vim.cmd.colorscheme("catppuccin")
  --   end,
  -- }
  -- Kanso
  {
    "webhooked/kanso.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("kanso").setup({
        transparent = true,
      })

      vim.cmd.colorscheme("kanso-zen")
    end,
  },
}
