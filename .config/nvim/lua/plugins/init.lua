return {
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
        lazy = false,
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
            local config = require 'dap-config'

            dap.adapters = config.adapters
            dap.configurations = config.configurations
        end,
    },
    {
        "mfussenegger/nvim-jdtls",
        lazy = false,
        dependencies = {
            "mfussenegger/nvim-dap",
        },
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
        "neovim/nvim-lspconfig",
        config = function()
            require("nvchad.configs.lspconfig").defaults()
            require "configs.lspconfig"
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
        "RRethy/vim-illuminate",
        lazy = false,
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
                "rust",
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
        "williamboman/mason.nvim",
    },
    {
        "mrcjkb/rustaceanvim",
        version = '^5',
        lazy = false,
    }
}
