-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Source nvim
vim.keymap.set("n", "<leader><leader>x", "<cmd>source %<CR>")

-- Quickfix Binds
vim.keymap.set("n", "<leader>xx", vim.diagnostic.setqflist, {
  desc = "All diagnostics",
})

vim.keymap.set("n", "<leader>xX", vim.diagnostic.setloclist, {
  desc = "Buffer diagnostics",
})

vim.keymap.set("n", "<M-j>", "<cmd>cnext<CR>", { desc = "Next quickfix item" })
vim.keymap.set("n", "<M-k>", "<cmd>cprev<CR>", { desc = "Previous quickfix item" })
