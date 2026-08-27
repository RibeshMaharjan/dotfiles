return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    opts = {
      filesystem = {
        filtered_items = {
          visible = true, -- This ensures hidden files are shown by default
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },
    lazy = false,                 -- neo-tree will lazily load itself
    config = function(_, opts)
      local neoTree = require("neo-tree")

      neoTree.setup(opts)

      vim.keymap.set("n", "<C-n>", "<Cmd>Neotree filesystem reveal left<CR>", { desc = "Reveal in Neo-tree" })
      vim.keymap.set("n", "<leader>n", "<Cmd>Neotree toggle<CR>", { desc = "Toggle Neo-tree" })
    end,
  },
}
