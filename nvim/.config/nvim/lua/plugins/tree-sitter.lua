return {
  {
    'nvim-treesitter/nvim-treesitter',
    branch = "master",
    lazy = false,
    build = ':TSUpdate',
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
  }
}
