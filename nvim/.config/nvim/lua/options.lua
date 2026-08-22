-- Enable line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Tabs and indentation
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Search settings
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Clipboard settings
vim.opt.clipboard = "unnamedplus"

-- Diagnostic
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})
