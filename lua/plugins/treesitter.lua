return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "markdown",
        "markdown_inline",
        "lua",
        "html",
        "bash",
        "json",
      },
      auto_install = true,
      highlight = {
        enable = true,
      },
    },
  },
}
