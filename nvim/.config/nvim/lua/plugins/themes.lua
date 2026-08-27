return {
  -- Catppuccin
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   priority = 1000,
  --   opts = {
  --     flavour = "mocha",
  --     transparent_background = true,
  --   },
  --   config = function()
  --     vim.cmd.colorscheme("catppuccin")
  --   end,
  -- },
  -- Kanso
  {
    "webhooked/kanso.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      transparent = true,
    },
    config = function(_, opts)
      local kanso = require("kanso")
      kanso.setup(opts)

      vim.cmd.colorscheme("kanso-zen")
    end,
  },
}
