vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<C-d>", "<C-d>zz", { noremap = true, silent = true, desc = "Page half down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { noremap = true, silent = true, desc = "Page half up" })
vim.keymap.set("n", "<leader>p", [["_dP]])

vim.keymap.set("n", "<leader>bl", vim.cmd.ls, { desc = "List all buffers" })
vim.keymap.set("n", "<leader>bn", vim.cmd.bnext, { desc = "Go to next buffer" })
vim.keymap.set("n", "<leader>bp", vim.cmd.bprevious, { desc = "Go to previous buffer" })

vim.keymap.set("n", "<leader>gj", "<C-w>j", { noremap = true, silent = true, desc = "Active the window below" })
vim.keymap.set("n", "<leader>gk", "<C-w>k", { noremap = true, silent = true, desc = "Active the window above" })
vim.keymap.set("n", "<leader>gh", "<C-w>h", { noremap = true, silent = true, desc = "Active the window left" })
vim.keymap.set("n", "<leader>gl", "<C-w>l", { noremap = true, silent = true, desc = "Active the window right" })

vim.keymap.set("n", "<leader>pp", function()
	local lines = table.concat(vim.api.nvim_buf_get_lines(0, 0, -1, false), "\n")
	vim.print(lines)
	local ns_id = vim.api.nvim_create_namespace("my_highlight_ns")
	vim.api.nvim_buf_add_highlight(0, ns_id, "String", 0, 0, 10)
end, { desc = "Shows the magical powers that vim provides" })

vim.keymap.set("n", "<leader>it", vim.cmd.InspectTree, { desc = "Inspect tree" })
vim.keymap.set("n", "<leader>li", vim.cmd.LspInfo, { desc = "LSP Info" })
vim.keymap.set("n", "<leader>opt", vim.cmd.options, { desc = "Show options" })

vim.keymap.set("n", "<leader>rc", function()
	vim.cmd.e("C:/Users/rajma/AppData/Local/nvim/init.lua")
end, { desc = "Go to init.lua" })
vim.keymap.set("n", "<leader>mrc", function()
	vim.cmd.Ex("C:/Users/rajma/AppData/Local/nvim/lua/rajm/")
end, { desc = "Go to my rc directory" })
vim.keymap.set("n", "<leader>pl", function()
	vim.cmd.Ex("C:/Users/rajma/AppData/Local/nvim/lua/plugins/")
end, { desc = "Go to my plugins directory" })
vim.keymap.set("n", "<leader>lsp", function()
	vim.cmd.Ex("C:/Users/rajma/AppData/Local/nvim/lua/lsps/")
end, { desc = "Go to my LSPs directory" })

vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show the error in floating window" })
vim.keymap.set("n", "<leader>ca", function()
	vim.lsp.buf.code_action({
		filter = function(a)
			return a.isPreferred
		end,
		apply = true,
	})
end, { noremap = true, silent = true, desc = "Code action" })

vim.keymap.set("n", "<Esc>", vim.cmd.nohlsearch, { desc = "Remove highlight search" })
vim.keymap.set("n", "<leader>sa", function()
	vim.cmd("%y")
end, { desc = "Yank the whole file" })
