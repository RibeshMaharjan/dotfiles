return {
  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
    },
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local bufnr = args.buf
          local gs = require("gitsigns")

          gs.setup({
            diff_opts = {
              -- This ensures both sides stay synced when scrolling,
              -- but you can customize the window options below
              vertical = true,
            },
          })

          local function set(mode, lhs, rhs, desc)
            vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
          end

          -- Keybinds
          set("n", "]c", function()
            if vim.wo.diff then
              vim.cmd.normal({ "]c", bang = true })
            else
              gs.nav_hunk("next")
            end
          end, "Next change")

          set("n", "[c", function()
            if vim.wo.diff then
              vim.cmd.normal({ "[c", bang = true })
            else
              gs.nav_hunk("prev")
            end
          end, "Previous change")

          set("n", "<leader>hp", gs.preview_hunk, "Preview change")
          set("n", "<leader>hi", gs.preview_hunk_inline, "Preview change inline")

          set("n", "<leader>ghi", function()
            vim.cmd("Gitsigns toggle_linehl")
            -- vim.cmd("Gitsigns toggle_word_diff")
            vim.cmd("Gitsigns toggle_deleted")
            vim.cmd("Gitsigns toggle_numhl")
          end, "Toggle All Git Changes in Buffer")

          set("n", "<leader>hs", gs.stage_hunk, "Stage change")
          set("n", "<leader>hr", gs.reset_hunk, "Reject change")
          set("n", "<leader>hd", gs.diffthis, "Diff unstaged changes")
          set("n", "<leader>hD", function()
            gs.diffthis("HEAD")
          end, "Diff all uncommitted changes")
          set("n", "<leader>hq", function()
            gs.setqflist("all")
          end, "Review all changes")

          set("n", "<leader>gb", gs.blame, "Show git blame")
          set("n", "<leader>gbi", gs.toggle_current_line_blame, "Toggle git blame inline")

          -- Diff against index (default)
          set("n", "<leader>gd", gs.diffthis, "Diff against index")

          -- Diff against the last commit (HEAD)
          set("n", "<leader>gD", function()
            gs.diffthis("~")
          end, "Show diff against the last commit")
        end,
      })
    end,
  },
}
