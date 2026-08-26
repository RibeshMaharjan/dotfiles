return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        icons_enabled = true,
        component_separators = "|",
        section_separators = "",
        always_show_tabline = true,
      },
      winbar = {
        lualine_a = { "buffers" },
      },
      inactive_winbar = {
        lualine_a = { "buffers" },
      },
    })
  end,
}
