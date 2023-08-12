local plugins = {
    {
        "nvim-telescope/telescope.nvim",
        lazy = false,
        dependencies = { 'nvim-lua/plenary.nvim' },
    },
    {
        "rcarriga/nvim-dap-ui",
        config = function()
            require("dapui").setup()
            vim.keymap.set("n", "<leader>du", require("dapui").toggle)
        end,
    },
    {
        "smjonas/inc-rename.nvim",
        config = function()
            require("inc_rename").setup()
        end,
    },
    {
        "mfussenegger/nvim-dap",
        module = { "dap" },
        lazy = false,
        config = function()
            local dap = require 'dap'
            local config = require 'custom.dap-config'

            dap.adapters = config.adapters
            dap.configurations = config.configurations
        end,
    },
    {
        'mfussenegger/nvim-dap-python',
        lazy = false,
        config = function()
            require('dap-python').setup('~/Documents/Honours-Research-Project/development/SnapPy/venv/bin/python')
        end,
    },
    {
        "leoluz/nvim-dap-go",
        lazy = false,
        config = function()
            require('dap-go').setup()
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            require("plugins.configs.lspconfig")
            require("custom.configs.lspconfig")
        end,
    },
    {
        "jay-babu/mason-nvim-dap.nvim",
        config = function()
            require("mason").setup()
            require('mason-nvim-dap').setup()
        end,
    },
    {
        "shatur/neovim-tasks",
    },
    {
        "ThePrimeagen/refactoring.nvim",
        config = function()
            require('refactoring').setup({})
        end,
    },
    {
        "sindrets/diffview.nvim",
        config = function()
            require('diffview').setup({
            })
        end,
    },
    {
        "echasnovski/mini.nvim",
        config = function ()
            require('mini.map').setup()
        end,
    },
    {
        "simrat39/symbols-outline.nvim",
        config = function()
            require('symbols-outline').setup({
                width = 25,
                show_numbers = false,
                show_relative_numbers = false,
                fold_markers = { '', '' },
                symbols = {
                    File = { icon = "", hl = "@text.uri" },
                    Module = { icon = "", hl = "@namespace" },
                    Namespace = { icon = "", hl = "@namespace" },
                    Package = { icon = "", hl = "@namespace" },
                    Class = { icon = "𝓒", hl = "@type" },
                    Method = { icon = "ƒ", hl = "@method" },
                    Property = { icon = "", hl = "@method" },
                    Field = { icon = "", hl = "@field" },
                    Constructor = { icon = "", hl = "@constructor" },
                    Enum = { icon = "ℰ", hl = "@type" },
                    Interface = { icon = "ﰮ", hl = "@type" },
                    Function = { icon = "", hl = "@function" },
                    Variable = { icon = "", hl = "@constant" },
                    Constant = { icon = "", hl = "@constant" },
                    String = { icon = "𝓐", hl = "@string" },
                    Number = { icon = "#", hl = "@number" },
                    Boolean = { icon = "⊨", hl = "@boolean" },
                    Array = { icon = "", hl = "@constant" },
                    Object = { icon = "⦿", hl = "@type" },
                    Key = { icon = "🔐", hl = "@type" },
                    Null = { icon = "NULL", hl = "@type" },
                    EnumMember = { icon = "", hl = "@field" },
                    Struct = { icon = "𝓢", hl = "@type" },
                    Event = { icon = "🗲", hl = "@type" },
                    Operator = { icon = "+", hl = "@operator" },
                    TypeParameter = { icon = "𝙏", hl = "@parameter" },
                    Component = { icon = "", hl = "@function" },
                    Fragment = { icon = "", hl = "@constant" },
                },
            })
        end,
    },
    {
        "RRethy/vim-illuminate",
    },
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                -- defaults 
                "vim",
                "lua",

                -- web dev 
                "html",
                "css",
                "javascript",
                "typescript",
                "tsx",
                "json",
                -- "vue", "svelte",

                -- low level
                "c",
                "latex",
                "zig",
                "go"
            },
        },
    },
    {
        "ThePrimeagen/harpoon",
        dependencies = { "nvim-lua/plenary.nvim" },
    },
    {
        "nvim-tree/nvim-web-devicons",
    }
}

return plugins
