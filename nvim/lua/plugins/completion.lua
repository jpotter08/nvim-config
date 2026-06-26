return {
  "saghen/blink.cmp",
  -- Use a stable release so lazy.nvim downloads a pre-built binary.
  -- Without this, it tries to compile from Rust source (requires nightly Rust).
  version = "1.*",
  dependencies = {
    -- A large collection of pre-written snippets for many languages (optional)
    "rafamadriz/friendly-snippets",
  },
  opts = {
    keymap = { 
        preset = "default",
        ["<Tab>"] = { "accept", "fallback"  },
    },  -- <C-y> to accept, <C-n>/<C-p> to navigate

    appearance = {
      nerd_font_variant = "mono",  -- use "normal" if you don't use a Nerd Font
    },

    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },

    completion = {
  ghost_text = {
    enabled = true,
  },
  menu = {
    auto_show = false,  -- hides the popup list
  },
  documentation = {
    auto_show = true,
    auto_show_delay_ms = 200,
  },
},
  },
}
