vim.lsp.config("ts_ls", {
  settings = {
    typescript = {
      inlayHints = {
        includeInlayParameterNameHints = "all",
      },
    },
    javascript = {
      inlayHints = {
        includeInlayParameterNameHints = "all",
      },
    },
  },
})
