local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazy_path) then
    vim.fn.system({
        "git",
        "clone",
        "--file=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
cim.opt.rtp:prepend(lazypath)
