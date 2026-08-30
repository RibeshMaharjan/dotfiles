return {
  {
    "nvim-telescope/telescope.nvim",
    version = "*",
    dependencies = {
      "nvim-lua/plenary.nvim",
      -- optional but recommended
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      "nvim-telescope/telescope-ui-select.nvim",
    },
    opts = {
      pickers = {
        find_files = {
          hidden = true, -- Ensures hidden files are shown by default
          no_ignore = true,
          file_ignore_patterns = {
            "node_modules/",
            "%.git/",
            "dist/",
            "build/",
          },
        },
      },
      extensions = {
        fzf = {},
        ["ui-select"] = require("telescope.themes").get_dropdown({}),
      },
    },
    config = function(_, opts)
      local builtin = require("telescope.builtin")
      local telescope = require("telescope")
      local set = vim.keymap.set
      telescope.setup(opts)

      -- Keybinds
      set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
      set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
      set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
      set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
      set("n", "<leader>en", function()
        builtin.find_files({
          cwd = vim.fn.stdpath("config"),
        })
      end, { desc = "Find Neovim Config" })
      set("n", "<leader>ep", function()
        builtin.find_files({
          cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy"),
        })
      end, { desc = "Search Neovim Package" })

      set("n", "<leader>cs", builtin.lsp_document_symbols, { desc = "Document Symbols" })

      -- Git binds
      set("n", "<leader>gc", builtin.git_commits, { desc = "List git commits" })
      set("n", "<leader>gB", builtin.git_branches, { desc = "List git branches" })

      -- Extensions
      require("telescope").load_extension("fzf")
      require("telescope").load_extension("ui-select")
    end,
  },
}
