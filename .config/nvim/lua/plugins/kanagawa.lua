return {
  "rebelot/kanagawa.nvim", { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  kanagawa_config = function()
    -- Default options:
      local config = require('kanagawa')
      config.setup({
      compile = false,             -- enable compiling the colorscheme
      undercurl = true,            -- enable undercurls
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true},
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = true,         -- do not set background color
      dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
      terminalColors = true,       -- define vim.g.terminal_color_{0,17}
      colors = {                   -- add/modify theme and palette colors
          palette = {},
          theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
      },
      overrides = function(colors) -- add/modify highlights
          return {}
      end,
      theme = "wave",              -- Load "wave" theme when 'background' option is not set
      background = {               -- map the value of 'background' option to a theme
          dark = "wave",           -- try "dragon" !
          light = "lotus"
      },
  })
  end,

  config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        background = {
          dark = "mocha",
          light = "latte"
        },
        transparent_background = false,
        float = {
          transparent = true,
          solid = true,
        },
        dim_inactive = {
          enabled = true, -- dims the background color of inactive window
          shade = "dark",
          percentage = 0.15, -- percentage of the shade to apply to the inactive window
        },
        auto_integrations = true,
        intergrations = {
          treesitter = true,
          native_lsp = {
            enabled = true,
            virtual_text = {
              errors = { "italic" },
              hints = { "italic" },
              warnings = { "italic" },
              information = { "italic" },
            },
            underlines = {
              errors = { "underline" },
              hints = { "underline" },
              warnings = { "underline" },
              information = { "underline" },
            },
          },
          lsp_trouble = false,
          lsp_saga = false,
          gitgutter = false,
          snacks = { 
            enabled = true,
              auto_close = false, 
              win = {
                position = "float", -- or "bottom"
                border = "rounded",
              },
            },
        }
    })
  vim.cmd.colorscheme("catppuccin")
  end,
}
