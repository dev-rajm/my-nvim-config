return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  transparent_background = false,
  config = function()
    vim.cmd.colorscheme("catppuccin")
  end,
}
