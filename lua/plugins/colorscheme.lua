return {
  {
    "catppuccin/nvim",
    lazy = true,
    name = "catppuccin",
    priority = 1000,
    opts = {
      integrations = {
        aerial = true,
        alpha = true,
        cmp = true,
        dashboard = true,
        flash = true,
        gitsigns = true,
        headlines = true,
        illuminate = true,
        indent_blankline = { enabled = true },
        leap = true,
        lsp_trouble = true,
        mason = true,
        markdown = true,
        mini = true,
        native_lsp = {
          enabled = true,
          underlines = {
            errors = { "undercurl" },
            hints = { "undercurl" },
            warnings = { "undercurl" },
            information = { "undercurl" },
          },
        },
        navic = { enabled = true, custom_bg = "lualine" },
        neotest = true,
        neotree = true,
        noice = true,
        notify = true,
        semantic_tokens = true,
        telescope = true,
        treesitter = true,
        treesitter_context = true,
        which_key = true,
      },
    },
  },
  {
    "rebelot/kanagawa.nvim",
    name = "kanagawa",
    opts = {
      transparent = true,
      compile = false, -- enable compiling the colorscheme
      undercurl = true, -- enable undercurls
      commentStyle = { italic = true },
      keywordStyle = { italic = true },
      theme = "dragon", -- themes wave, dragon, lotus
      statementStyle = { bold = true },
      priority = 1000,
      overrides = function(colors)
        local theme = colors.theme
        local palette = colors.palette

        return {
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          FloatTitle = { bg = "none" },
          NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },
          LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
          MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
          -- telescope
          TelescopeTitle = { fg = palette.surimiOrange, bold = true },
          TelescopePromptNormal = { bg = theme.ui.bg_p1 },
          TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
          TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
          TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
          TelescopePreviewNormal = { bg = theme.ui.bg_dim },
          TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
          -- menu
          Pmenu = { fg = palette.surimiOrange, bg = theme.ui.bg_p1 }, -- add `blend = vim.o.pumblend` to enable transparency
          PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
          PmenuSbar = { bg = theme.ui.bg_m1 },
          PmenuThumb = { bg = theme.ui.bg_p2 },
        }
      end,
    },
  },
  {
    "ellisonleao/everforest",
    name = "everforest",
    opts = {
      transparent_background = true,
    },
  },
  {
    "olimorris/onedarkpro.nvim",
    name = "onedark",
    proprity = 1000,
  },
  {
    "arcticicestudio/nord-vim",
    name = "nord",
  },
  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    -- config = function()
    --   require("nordic").load()
    -- end,
    priority = 1000,
    name = "nordic",
    opts = {
      on_palette = function(paletten)
        return paletten
      end,
      -- Enable general editor background transparency.
      transparent_bg = false,
      cursorline = {
        -- Bold font in cursorline.
        bold = false,
        -- Bold cursorline number.
        bold_number = true,
        -- Available styles: 'dark', 'light'.
        theme = "dark",
        -- Blending the cursorline bg with the buffer bg.
        blend = 0.85,
      },
      telescope = {
        -- Available styles: `classic`, `flat`.
        style = "flat",
      },
      leap = {
        -- Dims the backdrop when using leap.
        dim_backdrop = true,
      },
      ts_context = {
        -- Enables dark background for treesitter-context window
        dark_background = true,
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = { "everforest" } },
  },
}
