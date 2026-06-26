return {
  {
    'akinsho/bufferline.nvim',
    version = '*',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    event = 'VeryLazy',
    keys = {
      { '<leader>bp', '<Cmd>BufferLineTogglePin<CR>', desc = 'Toggle Pin' },
      { '<leader>bP', '<Cmd>BufferLineGroupClose ungrouped<CR>', desc = 'Delete Non-Pinned Buffers' },
      { '<S-h>', '<Cmd>BufferLineCyclePrev<CR>', desc = 'Prev Buffer' },
      { '<S-l>', '<Cmd>BufferLineCycleNext<CR>', desc = 'Next Buffer' },
    },
    opts = {
      options = {
        mode = 'buffers',
        style_preset = 'default',
        diagnostics = 'nvim_lsp', -- Show LSP diagnostics on tabs
        always_show_bufferline = true,
        -- Correctly offsets the buffer bar if a side file explorer is open
        offsets = {
          {
            filetype = 'neo-tree',
            text = 'File Explorer',
            text_align = 'center',
            separator = true,
          },
          {
            filetype = 'NvimTree',
            text = 'File Explorer',
            text_align = 'center',
            separator = true,
          }
        },
      },
    },
    config = function(_, opts)
      -- Required for proper terminal colors
      vim.opt.termguicolors = true
      require('bufferline').setup(opts)
    end,
  }
}
