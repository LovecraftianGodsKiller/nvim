return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      icons_enabled = true,
      theme = "rose-pine-alt",
      component_separators = { left = '', right = ''},
      section_separators = { left = '', right = ''},
      disabled_filetypes = {
        statusline  = {},
        winbar = {},
      },
      ignore_focus = {},
      always_divide_middle = true,
      globalstatus = false,
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
      },
      sections = {
        lualine_a = {
          {
            'mode',
            icons_enabled = true,
            icon = { "" },
            padding = 1,
          },
        },
        lualine_b = {"branch", "diff", "diagnostics"},
        lualine_c = {
          {
            "filename",
            file_status = true,
            newfile_status = false,
            path = 3,
            shorting_target = 40,
            symbols = {
              modified = "[+]",
              readonly = "[-]",
              unnamed = "[No Name]",
              newfile = "[New]",
            },
          },
        },
        lualine_x = {
          {
            "datetime",
            style = "%H:%M:%S",
          },
          "encoding",
          "fileformat",
          {
            "filetype",
            colored = true,
            icon_only = true,
            icon = { align = "right" },
          },
        },
        lualine_y = {"progress",},
        lualine_z = {"location"}
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {"filename"},
        lualine_x = {"location"},
        lualine_y = {},
        lualine_z = {}
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {}
    },
  },
}
