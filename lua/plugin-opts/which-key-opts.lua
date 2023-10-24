local wk = require("which-key")
wk.register(mappings, opts)

wk.register({
    f = {
        name = "file",
        f = { "<cmd>Telescope find_files<cr>", "Find File" },
        r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
        n = { "New File" }, -- just a label. don't create any mapping
        e = "Edit File", -- same as above
    },
}, {prefix = "<leader>" })
