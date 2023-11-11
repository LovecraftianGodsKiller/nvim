require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "rust_analyzer", "marksman", "bashls", "jsonls", "taplo", "yamlls", "lemminx" },
    automatic_isntallation = true,
    handlers = nil,
}
