return {
  "catppuccin/nvim",
  name = "catppuccin",
  flavour = "mocha",
  priority = 1000,
  transparent_background = false,
  config = function()
    vim.cmd.colorscheme("catppuccin")
  end,
}
