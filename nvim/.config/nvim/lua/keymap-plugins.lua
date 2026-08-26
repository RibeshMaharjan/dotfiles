-- Telescope
local builtin = require("telescope.builtin")

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

-- neoTree

-- Open / focus Neo-tree
vim.keymap.set("n", "<C-n>", "<Cmd>Neotree filesystem reveal left<CR>")

-- Toggle Neo-tree
vim.keymap.set("n", "<leader>n", "<Cmd>Neotree toggle<CR>")
