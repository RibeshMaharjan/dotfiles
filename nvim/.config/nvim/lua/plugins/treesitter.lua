return {
  {
    "nvim-treesitter/nvim-treesitter",
    -- Lock to the last stable release before the 0.12 rewrite
    tag = "v0.9.3",
    branch = "master",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        -- Parsers to automatically install
        ensure_installed = {
          "lua",
          "vim",
          "vimdoc",
          "query",
          "sql",
          "php",
          "javascript",
          "typescript",
          "markdown",
          "markdown_inline",
        },

        -- Install parsers synchronously (only applied to `ensure_installed`)
        sync_install = false,

        -- Automatically install missing parsers when entering buffer
        -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
        auto_install = false,

        -- List of parsers to ignore installing (or "all")
        -- ignore_install = { "" },

        -- Enable Treesitter syntax highlighting
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false, -- Disables default Vim regex highlighting for better speed
        },

        -- Enable Treesitter-based experimental indentation
        indent = {
          enable = true,
        },
      })
    end,
  },
}
