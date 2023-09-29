return {
    {
        "lukas-reineke/indent-blankline.nvim",
        opt = {
            config = function()
                    highlight = {
                        "RainbowRed",
                        "RainbowYellow",
                        "RainbowBlue",
                        "RainbowOrange",
                        "RainbowGreen",
                        "RainbowViolet",
                        "RainbowCyan",
                    },
                    require "ibl.hooks",
                    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
                        vim.api.nvim_set_hl(0, "RainbowRed", {fg = "#EB69F2" })
                        vim.api.nvim_set_hl(0, "RainbowYellow", {fg = "#F6C177" })
                        vim.api.nvim_set_hl(0, "RainbowBlue", {fg = "#286983" })
                        vim.api.nvim_set_hl(0, "RainbowOrange", {fg = "#EA9D34" })
                        vim.api.nvim_set_hl(0, "RainbowGreen", {fg = "#9CCF8D" })
                        vim.api.nvim_set_hl(0, "RainbowViolet", {fg = "#C4A7E7" })
                        vim.api.nvim_set_hl(0, "RainbowCyan", {fg = "#31748F" })
                    end)
                    require("ibl").setup { indent = { highlight = highlight } }
        end
        },
    },
}
