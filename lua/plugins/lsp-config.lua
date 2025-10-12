return {
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"rust_analyzer",
					"clangd",
					"pylsp",
					"ts_ls",
          "gopls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			vim.lsp.config("lua_ls", require("lsps.lua_ls"))
			vim.lsp.config("lua_ls", require("lsps.pylsp"))
      vim.lsp.config("ts_ls", require("lsps.ts_ls"))
      vim.lsp.config("clangd", require("lsps.clangd"))
      vim.lsp.config("gopls", require("lsps.gopls"))
      vim.lsp.config("bashls", require("lsps.bashls"))

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
