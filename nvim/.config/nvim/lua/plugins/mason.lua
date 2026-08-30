return {
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			{
				"mason-org/mason.nvim",
				opts = {
					ui = {
						icons = {
							package_installed = "✓",
							package_pending = "➜",
							package_uninstalled = "✗",
						},
					},
				},
			},
			{
				"neovim/nvim-lspconfig",
				dependencies = {
					{
						"folke/lazydev.nvim",
						ft = "lua", -- only load on lua files
						opts = {
							library = {
								-- See the configuration section for more details
								-- Load luvit types when the `vim.uv` word is found
								{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
							},
						},
					},
				},
				config = function()
					local set = vim.keymap.set
					vim.api.nvim_create_autocmd("LspAttach", {
						group = vim.api.nvim_create_augroup("my.lsp", {}),
						callback = function(args)
							local client = assert(vim.lsp.get_client_by_id(args.data.client_id))

							set("n", "gd", vim.lsp.buf.definition, {
								buffer = args.buf,
								desc = "Go to definition",
							})
							set("n", "gD", vim.lsp.buf.declaration, {
								buffer = args.buf,
								desc = "Go to declaration",
							})
							set("n", "<leader>th", function()
								local filter = { bufnr = args.buf }
								vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled(filter), filter)
							end, { buffer = args.buf, desc = "Toggle inlay hints" })
						end,
					})
				end,
			},
		},
		opts = {
			ensure_installed = {
				"lua_ls",
				"ts_ls",
				"html",
				"cssls",
				"tailwindcss",
				"jsonls",
				"emmet_language_server",

				-- linter
				"eslint",
			},
			automatic_enable = false,
		},
	},
	-- Automatically install non-LSP tools
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = {
			"mason-org/mason.nvim",
		},
		opts = {
			ensure_installed = {
				"prettier",
				"prettierd",
				"yamlfmt",
				"stylua",
				"eslint_d",
				"eslint_d",
			},
		},
	},
}
