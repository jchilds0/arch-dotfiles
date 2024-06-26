local plugins = {
    {
        "nvim-telescope/telescope.nvim",
        lazy = false,
        dependencies = { 'nvim-lua/plenary.nvim' },
    },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = {
            "mfussenegger/nvim-dap",
            "nvim-neotest/nvim-nio",
        },
        config = function()
            require("dapui").setup({})
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
            require('dap-python').setup('~/Documents/projects/gfa-scroller-script/venv/bin/python')
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
        "mfussenegger/nvim-jdtls",
        lazy = false,
        dependencies = {'mfussenegger/nvim-dap'},
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
        "nvim-treesitter/nvim-treesitter-context",
        lazy = false,
        config = function() 
            require'treesitter-context'.setup{
                enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
                max_lines = 5, -- How many lines the window should span. Values <= 0 mean no limit.
                min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
                line_numbers = true,
                multiline_threshold = 20, -- Maximum number of lines to collapse for a single context line
                trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
                mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
                -- Separator between context and content. Should be a single character string, like '-'.
                -- When separator is set, the context will only show up when there are at least 2 lines above cursorline.
                separator = nil,
                zindex = 20, -- The Z-index of the context window
                on_attach = function(bufn) return true end, -- (fun(buf: integer): boolean) return false to disable attaching
            }
        end,
    },
    {
        "ThePrimeagen/harpoon",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require('harpoon').setup()
            require('telescope').load_extension('harpoon')
        end,
    },
    {
        "nvim-tree/nvim-web-devicons",
    },
    {
        "christoomey/vim-tmux-navigator",
        lazy = false,
    },
}

return plugins
