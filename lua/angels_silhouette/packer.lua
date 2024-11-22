-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

    use 'theprimeagen/harpoon'

    use 'nvim-lua/plenary.nvim'
    use "lukas-reineke/indent-blankline.nvim"

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use 'tpope/vim-fugitive'

    use 'Mofiqul/dracula.nvim'
    use 'iruzo/matrix-nvim'

    use { 'akinsho/git-conflict.nvim', tag = "*", config = function()
        require('git-conflict').setup()
    end }

    use 'edluffy/hologram.nvim'
    use 'matveyt/neoclip'

    use 'HiPhish/nvim-ts-rainbow2'

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {
                -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }

    use {
        'nvim-telescope/telescope.nvim',
        branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
end)
