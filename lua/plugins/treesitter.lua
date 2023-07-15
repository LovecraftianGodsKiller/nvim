require'nvim-treesitter.configs'.setup {
  ensure_installed = { 'lua', 'markdown', 'markdown_inline' },
  auto_install = true,
  highlight = {
    enable = true,
  },
}
