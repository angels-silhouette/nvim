-- neovim
vim.opt.nu = true
vim.opt.relativenumber = true

vim.g.mapleader = " "

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = true

vim.opt.incsearch = true

vim.termguicolours = true

vim.opt.scrolloff = 10

-- Colourscheme
local dracula = require('dracula')
dracula.setup({
    show_end_of_buffer = true,
    transparent_bg = true,
    lualine_bg_color = "#44475a",
    italic_comment = true,
    overrides = {},
})

vim.cmd [[colorscheme dracula]]

-- LSP
local lsp = require('lsp-zero').preset({})
lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
end)

require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

require("ibl").setup()

-- treesitter
require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "cpp", "lua", "vim", "vimdoc", "query" },

    sync_install = true,
    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
    },

    rainbow = {
        enable = true,
        query = 'rainbow-parens',
        strategy = require('ts-rainbow').strategy.global,
    }
}

-- lualine
require('lualine').setup {
    options = {
        icons_enabled = true,
        theme = 'auto',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' }
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
}
