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

      telescope.setup(opts)

      -- Keybinds
      vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
      vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
      vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
      vim.keymap.set("n", "<leader>en", function()
        builtin.find_files({
          cwd = vim.fn.stdpath("config"),
        })
      end, { desc = "Find Neovim Config" })
      vim.keymap.set("n", "<leader>ep", function()
        builtin.find_files({
          cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy"),
        })
      end, { desc = "Search Neovim Package" })

      -- Extensions
      require("telescope").load_extension("fzf")
      require("telescope").load_extension("ui-select")
    end,
  },
}
