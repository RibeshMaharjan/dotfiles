return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    options = {
      icons_enabled = true,
      component_separators = "|",
      section_separators = "",
      always_show_tabline = true,
    },
    sections = {
      lualine_c = {
        { "filename", path = 1 }, -- 1 = Relative Path
      },
    },
    tabline = {
      lualine_a = { "buffers" },
    },
    -- inactive_winbar = {
    --   lualine_a = { "buffers" },
    -- },
  },
}
