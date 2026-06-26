-- 1. Setup Mason (if you are using it to install servers)
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "pyright" }, -- Add your preferred LSPs
})

-- 2. Configure individual servers using native APIs
-- Instead of: require('lspconfig').lua_ls.setup{}

-- Example: lua_ls (Lua)
vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
})

-- Example: pyright (Python)
vim.lsp.config("clangd", {})
vim.lsp.enable({"clangd"})
