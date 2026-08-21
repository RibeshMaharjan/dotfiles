return {
  -- LSP Config
  {
    "neovim/nvim-lspconfig",
    config = function()

    end
  },

  -- Mason Package Manager
  {
    "mason-org/mason.nvim",
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
      require("mason").setup()
    end
  },

  -- Mason LSP Bridge
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      { "mason-org/mason.nvim" },
    },
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = { "lua_ls", "ts_lc" },
        automatic_enable = true
      }
    end
  }
}
