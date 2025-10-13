vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	severity_sort = true,
	float = {
		border = "rounded",
		focusable = true,
		source = true,
	},
})

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
			vim.lsp.config("pylsp", require("lsps.pylsp"))
			vim.lsp.config("ts_ls", require("lsps.ts_ls"))
			vim.lsp.config("clangd", require("lsps.clangd"))
			vim.lsp.config("gopls", require("lsps.gopls"))
			vim.lsp.config("bashls", require("lsps.bashls"))

			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Define the keyword under cursor" })
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
		end,
	},
}
