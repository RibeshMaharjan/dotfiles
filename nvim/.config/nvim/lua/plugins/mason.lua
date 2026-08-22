return {
  -- {
  --   "neovim/nvim-lspconfig",
  --   config = function()
  --     require("mason-lspconfig").setup {
  --       ensure_installed = { "lua_ls", "tsc",  },
  --       automatic_enable = false
  --     }
  --   end
  --
  --
  --
  {
    "mason-org/mason.nvim",
    opts = {
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    },
    config = function()
      require("mason").setup()
    end,
  },
  -- {
  --   "mason-org/mason-lspconfig.nvim",
  --   opts = {},
  --   dependencies = {
  --     { "mason-org/mason.nvim", opts = {} },
  --     "neovim/nvim-lspconfig",
  --   },
  --   config = function()
  --     require("mason-lspconfig").setup {
  --       ensure_installed = { "lua_ls", "ts_lc" },
  --       automatic_enable = true
  --     }
  --   end
  -- }, 
}
