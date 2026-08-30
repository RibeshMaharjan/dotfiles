return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				typescript = { "prettierd", "prettier" },
				javascript = { "prettierd", "prettier" },
				typescriptreact = { "prettierd", "prettier" },
				javascriptreact = { "prettierd", "prettier" },
				markdown = { "prettierd", "prettier" },
				json = { "prettierd", "prettier" },
				html = { "prettierd", "prettier" },
				css = { "prettierd", "prettier" },
				scss = { "prettierd", "prettier" },
				yaml = { "yamlfmt" },
			},
			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
			},
			lsp_format = "fallback",
			stop_after_first = true,
		},
		config = function(_, opts)
			local conform = require("conform")

			conform.setup(opts)

			vim.keymap.set({ "n", "v" }, "<leader>l", function()
				conform.format({
					async = false,
				})
			end, { desc = "Format file or range (in visual mode)" })
		end,
	},
}
