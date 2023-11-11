return {
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
            position = "right",
            height = "10",
            width = "50",
            icons = true,
            severity = nil,
            fold_open = "",
            fold_close = "",
            group = true,
            padding = true,
            cycle_results = true,
            signs = {
                error = "",
                warning = "",
                hint = "",
                information = "",
                other = "",
            },
        },
    },
}
