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
      },
    },
    config = function(_, opts)
      local telescope = require("telescope")

      opts.extensions["ui-select"] = require("telescope.themes").get_dropdown({})

      telescope.setup(opts)

      require("telescope").load_extension("fzf")
      require("telescope").load_extension("ui-select")
    end,
  },
}
