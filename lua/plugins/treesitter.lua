
return {
  "nvim-treesitter/nvim-treesitter",
  branch = 'master',
  lazy = false,
  build = ":TSUpdate",
  config = function()    
    local config = require('nvim-treesitter.configs')
    config.setup({
      auto_isntall = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
