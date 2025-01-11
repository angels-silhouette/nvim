-- neovim
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.signcolumn = 'yes'

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.incsearch = true

vim.termguicolours = true

vim.opt.scrolloff = 10

-- aethetics
require('angels_silhouette.settings.aethetics')

-- git
require('angels_silhouette.settings.git')

-- LSP
require('angels_silhouette.settings.lsp')
