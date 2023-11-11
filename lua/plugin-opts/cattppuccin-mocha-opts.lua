local mocha = require("catppuccin.palettes").get_palette "mocha"

require("catppuccin").setup {
    color_overrides = {
        all = {
	    rosewater = "#f5e0dc",
	    flamingo = "#f2cdcd",
	    pink = "#f5c2e7",
	    mauve = "#cba6f7",
	    red = "#f38ba8",
	    maroon = "#eba0ac",
	    peach = "#fab387",
	    yellow = "#f9e2af",
	    green = "#a6e3af",
	    teal = "#94e2d5",
	    sky = "#89dceb",
	    sapphire = "#74c7ec",
	    blue = "#89b4fe",
	    lavender = "#b4befe",
        text = "#cdd6f4",
	    subtext1 = "#bac2de",
	    subtext0 = "#a6adc8",
	    overlay2 = "#9399b2",
	    overlay1 = "#7f849c",
	    overlay0 = "#6c7086",
	    surface2 = "#585b70",
	    surface1 = "#45475a",
	    surface0 = "#313244",
	    base = "#1e1e2e",
	    mantle = "#181825",
	    crust = "#11111b",
        },
    },
    custom_highlights = function(colors)
        return {
            Comment = { fg = colors.flamingo },
            TabLineSel = { bg = colors.pink },
            CmpBorder = { fg = colors.surface2 },
            Pmenu = { bg = colors.none },
        }
    end,
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        lsp_trouble = true,
        notify = true,
        native_lsp = {
            enabled = true,
            virtual_text = {
                errors = { "italic" },
                hints = { "italic" },
                warnings = { " italic" },
                information = { " italic" },
            },
            underlines = {
                errors = { "underline" },
                hints = { "underline" },
                warnings = { "underline" },
                information = { "underline" },
            },
            inlay_hints = {
                background = true,
            },
        },
        mini = {
            enabled = true,
            indentscope_color = "",
        },
        indent_blankline = {
            enabled = true,
            scope_color = "", -- catppuccin color (eg. 'lavender) Default: text
            colored_indent_levels = true,
        },
        which_key = true,
    },
}
