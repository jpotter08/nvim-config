return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8', -- Pinning to a stable release is recommended
  dependencies = { 
    'nvim-lua/plenary.nvim',
    -- Optional: adds file icons to your picker layouts
    'nvim-tree/nvim-web-devicons' 
  },
  keys = {
    -- Keymaps are defined here to leverage lazy-loading
    { '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'Find Files' },
    { '<leader>fg', '<cmd>Telescope live_grep<cr>', desc = 'Live Grep' },
    { '<leader>fb', '<cmd>Telescope buffers<cr>', desc = 'Buffers' },
    { '<leader>fh', '<cmd>Telescope help_tags<cr>', desc = 'Help Tags' },
  },
  config = function()
    -- Optional: Custom configurations go here inside setup()
    require('telescope').setup({
      defaults = {
        -- Your default configuration options
      },
    })
  end,
}
