-- bootstrap lazy.nvim, LazyVim and your plugins
vim.opt.termguicolors = true

require("config.keymaps")
require("config.lazy")
require("plugin-opts.cattppuccin-mocha-opts")
require("plugin-opts.neo-tree-opts")
require("plugin-opts.which-key-opts")
require("plugin-opts.indent-blankline-opts")
require("config.options")
