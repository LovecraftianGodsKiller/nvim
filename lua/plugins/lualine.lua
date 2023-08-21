return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      icons_enabled = true,
      theme = auto,
      component_separators = { left = '', right = ''},
      section_separators = { left = '', right = ''},
      sections = {
        lualine_a = {
          {
            'mode',
            icons_enabled = true,
            icon = "",
            separator = { right = '' },
            color = { fg = "#eb6f92", bg = "#26233a" },
          },
        },
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype', 'filesize' },
        lualine_y = {'progress'},
        lualine_z = {'location'}
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_c = {'location'},
        lualine_y = {},
        lualine_z = {}
      },
    },
  },
}
