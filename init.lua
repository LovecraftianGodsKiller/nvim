-- bootstrap lazy.nvim, LazyVim and your plugins
vim.opt.termguicolors = true

require("config.keymaps")
require("config.lazy")
require("plugin-opts.eldritch-opts")
require("config.colorscheme")
require("plugin-opts.indent-blankline-opts")
require("plugin-opts.stay-centered-opts")
require("config.options")
