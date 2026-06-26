vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.guicursor = "a:block"
vim.opt.tabstop = 2       -- Width of a hard tab
vim.opt.shiftwidth = 2    -- Size of an indent
vim.opt.softtabstop = 2   -- Number of spaces inserted/deleted with tab/backspace
vim.opt.expandtab = true  -- Converts tabs to spaces
vim.opt.smartindent = true-- Makes indents smart

-- keymaps
vim.keymap.set("n", "<leader>r", "<cmd>set relativenumber!<cr>", { desc = "Toggle relative line numbers" })
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, { desc = 'Show line diagnostics' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic' })
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic' })
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]], { silent = true })
