return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
      ensure_installed = {
        "c",
        "lua",
        "markdown",
        "markdown_inline",
        "toml",
        "bash",
      },
      sync_install = true,
      highlight = {
        enabled = true,
      },
      indent = {
        enabled = true,
      },
    },
  },
}
