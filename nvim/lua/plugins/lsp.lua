return {
  "neovim/nvim-lspconfig",
  dependencies = { "saghen/blink.cmp" },
  config = function()
    local capabilities = require("blink.cmp").get_lsp_capabilities()

    vim.lsp.config("clangd", {
      capabilities = capabilities,
      -- your existing clangd opts here, e.g.:
      cmd = { "clangd", "--background-index", "--clang-tidy" },
      filetypes = { "c", "cpp", "objc", "objcpp" },
    })
    vim.lsp.enable("clangd")
  end,
}
