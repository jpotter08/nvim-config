return {
  "rebelot/kanagawa.nvim",
  lazy = false,    -- make sure we load this during startup to prevent flicker
  priority = 1000, -- load this first before other plugins
  config = function()
    require("kanagawa").setup({
      -- Your Kanagawa options go here (see options below)
      compile = false,  -- enable compiling the colorscheme for faster startup
      background = {    -- map the value of 'background' option to a kanagawa theme
          dark = "dragon", -- can be "wave" or "dragon"
          light = "lotus"
      },
    })

    -- Apply the colorscheme
    vim.cmd("colorscheme kanagawa")
  end,
}
