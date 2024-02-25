local wk = require("which-key")
wk.register(mappings, opts)

wk.register({
    q = { "<cmd>bd<cr>", "Close All Buffers"},
    f = {
        name = "file",
        f = { "<cmd>Telescope find_files<cr>", "Find File" },
        r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
        n = { "New File" }, -- just a label. don't create any mapping
        e = "Edit File", -- same as above
    },
    n = {
        name = "Neo Tree",
        r = { "<cmd>Neotree reveal<cr>", "Reveal" },
        e = { "<cmd>Neotree dir=$HOME<cr>", "Open in Current dir" },
    },
    ["<Tab>"] = {
	name = "Tabs",
    	["<Tab>"] = { "<cmd>$tabnew<cr>", "New Tab" },
    	["["] = { "<cmd>tabnext -<cr>", "Previous Tab" },
	    ["]"] = { "<cmd>tabnext<cr>", "Next Tab" },
    	d = { "<cmd>tabclose<cr>", "Close Tab"},
    	f = { "<cmd>1tabnext<cr>", "First Tab" },
    	l = { "<cmd>$tabnext<cr>", "Last Tab" },
    },
    w = {
        name = "Windows",
        ["-"] = { "<cmd>horizontal new<cr>" },
        ["|"] = { "<cmd>vnew<cr>", "Split to right" },
        d = { "<cmd>q<cr>", "delete window" },
        w = { "<CTRL-W>", "Cycle window" },
    }
}, {prefix = "<leader>" })
