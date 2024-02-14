return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "storm", -- The theme comes in three styles, `storm`, `moon`, `night` and `day`
      light_style = "day", -- The theme is used when the background is set to light
      transparent = true, -- Enable this to disable setting the background color
      terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        sidebars = "transparent",
        floats = "transparent",
      },
      sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows
      day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style
      hide_inactive_statusline = false, -- Hides inactive statuslines and replaces them with a thin border
      dim_inactive = false, -- Dims inactive windows
      lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold
    },
  },
}
