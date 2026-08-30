return {
  {
    "saghen/blink.cmp",
    -- optional: provides snippets for the snippet source
    dependencies = { "rafamadriz/friendly-snippets" },

    version = "1.*",

    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      -- See :h blink-cmp-config-keymap for defining your own keymap
      keymap = { preset = "enter" },

      appearance = {
        nerd_font_variant = "mono",
      },

      -- per_filetype = {
      --   lua = { inherit_defaults = true, "lazydev" },
      -- },
      --
      -- providers = {
      --   lazydev = {
      --     name = "LazyDev",
      --     module = "lazydev.integrations.blink",
      --     score_offset = 100,
      --   },
      -- },

      completion = {
        documentation = {
          auto_show = true,
        },
      },

      signature = {
        enabled = true,

        trigger = {
          show_on_accept = true,
        },
      },
    },
  },
}
