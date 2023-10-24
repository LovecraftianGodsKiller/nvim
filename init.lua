-- bootstrap lazy.nvim, LazyVim and your plugins
vim.opt.termguicolors = true

require("config.keymaps")
require("config.lazy")
require("plugin-opts.which-key-opts")
require("config.options")
