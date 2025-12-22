return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  transparent_background = false,
  auto_integrations = true,
  config = function()
    vim.cmd.colorscheme("catppuccin")
  end,
}
