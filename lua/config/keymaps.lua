-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
M = {}

local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local map = vim.api.nvim_set_keymap

map("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

map("n", "<m-h>", "<C-w>h", opts)
map("n", "<m-j>", "<C-w>j", opts)
map("n", "<m-k>", "<C-w>k", opts)
map("n", "<m-l>", "<C-w>l", opts)
map("n", "<m-tab>", "<C-6>", opts)

map("n", "<A-j>", "<Esc>:m .+1<CR>==gi", opts)
map("n", "<A-k>", "<Esc>:m .-1<CR>==gi", opts)
