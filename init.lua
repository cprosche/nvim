local opt = vim.opt

opt.number = true
opt.fillchars = { eob = " " } 
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
opt.wrap = false
opt.background = "dark"
opt.termguicolors = true
vim.g.mapleader = ";"

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

opt.rtp:prepend(lazypath)

local plugins = {
{ "ellisonleao/gruvbox.nvim", priority = 1000 , config = true, opts = ...}
}

require("lazy").setup(plugins)

vim.cmd([[colorscheme gruvbox]])
