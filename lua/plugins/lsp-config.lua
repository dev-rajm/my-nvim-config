return {
  {
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls" },
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()

      -- Lua
      vim.lsp.config["lua_ls"] = {
        cmd = { "lua-language-server" },
        settings = {
          Lua = {},
        },
      }

      -- Python
      vim.lsp.config["pyright"] = {
        cmd = { "pyright-langserver", "--stdio" },
      }

      -- JavaScript / TypeScript
      vim.lsp.config["tsserver"] = {
        cmd = { "typescript-language-server", "--stdio" },
      }

      -- C/C++
      vim.lsp.config["clangd"] = {
        cmd = { "clangd" },
      }

      vim.api.nvim_create_autocmd("FileType", {
        pattern = "lua",
        callback = function()
          vim.lsp.enable("lua_ls")
        end,
      })

      vim.api.nvim_create_autocmd("FileType", {
        pattern = "python",
        callback = function()
          vim.lsp.enable("pyright")
        end,
      })

      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "javascript", "typescript" },
        callback = function()
          vim.lsp.enable("tsserver")
        end,
      })

      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "c", "cpp" },
        callback = function()
          vim.lsp.enable("clangd")
        end,
      })

      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
    end
  },
}
