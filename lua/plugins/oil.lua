return {
  "stevearc/oil.nvim",
  lazy = false,
  config = function()
    require("oil").setup()
  end,
  vim.keymap.set("n", "-", "<CMD>Oil<CR>", {}),
}
