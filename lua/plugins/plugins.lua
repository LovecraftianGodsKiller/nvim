require('lazy').setup({
  { 'rose-pine/neovim', name = 'rose-pine' },
  { 
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  },
  { 'nvim-treesitter/nvim-treesitter' },
  { 'neovim/nvim-lspconfig' },
})

