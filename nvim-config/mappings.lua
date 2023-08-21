local M = {}

M.disabled = {
    i = {
        ["<C-h>"] = ""
    },
    n = {
        ["<leader>v"] = "",
        ["<leader>h"] = ""
    }
}

M.abc = {
    n = {
        -- debugger
        ["<leader>dR"] = { "<cmd>lua require'dap'.run_to_cursor()<cr>", "Run to Cursor" },
        ["<leader>dE"] = { "<cmd>lua require'dapui'.eval(vim.fn.input '[Expression] > ')<cr>", "Evaluate Input" },
        ["<leader>dC"] = { "<cmd>lua require'dap'.set_breakpoint(vim.fn.input '[Condition] > ')<cr>", "Conditional Breakpoint" },
        ["<leader>dv"] = { "<cmd>lua require'dapui'.toggle()<cr>", "Toggle UI" },
        ["<leader>db"] = { "<cmd>lua require'dap'.step_back()<cr>", "Step Back" },
        ["<leader>dc"] = { "<cmd>lua require'dap'.continue()<cr>", "Continue" },
        ["<leader>dr"] = { "<cmd>lua require'dap'.restart()<cr>", "Restart" },
        ["<leader>dd"] = { "<cmd>lua require'dap'.disconnect()<cr>", "Disconnect" },
        ["<leader>de"] = { "<cmd>lua require'dapui'.eval()<cr>", "Evaluate" },
        ["<leader>dg"] = { "<cmd>lua require'dap'.session()<cr>", "Get Session" },
        ["<leader>dh"] = { "<cmd>lua require'dap.ui.widgets'.hover()<cr>", "Hover Variables" },
        ["<leader>dS"] = { "<cmd>lua require'dap.ui.widgets'.scopes()<cr>", "Scopes" },
        ["<leader>di"] = { "<cmd>lua require'dap'.step_into()<cr>", "Step Into" },
        ["<leader>do"] = { "<cmd>lua require'dap'.step_over()<cr>", "Step Over" },
        ["<leader>dp"] = { "<cmd>lua require'dap'.pause.toggle()<cr>", "Pause" },
        ["<leader>dq"] = { "<cmd>lua require'dap'.close()<cr>", "Quit" },
        ["<leader>drp"]= { "<cmd>lua require'dap'.repl.toggle()<cr>", "Toggle Repl" },
        ["<leader>ds"] = { "<cmd>lua require'dap'.continue()<cr>", "Start" },
        ["<leader>dt"] = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint" },
        ["<leader>dx"] = { "<cmd>lua require'dap'.terminate()<cr>", "Terminate" },
        ["<leader>du"] = { "<cmd>lua require'dap'.step_out()<cr>", "Step Out" },
        ["<leader>ev"] = { "<cmd>lua require'dapui'.eval()<cr>", "Evaluate" },
        -- hotkeys
        ["<F5>"]       = { "<cmd>lua require'dap'.restart()<cr>", "Restart" },
        ["<F7>"]       = { "<cmd>lua require'dap'.step_into()<cr>", "Step Into" },
        ["<F8>"]       = { "<cmd>lua require'dap'.step_over()<cr>", "Step Over" },
        ["<F9>"]       = { "<cmd>lua require'dap'.continue()<cr>", "Continue" },
        -- refactoring
        ["<leader>rb"] = { "<cmd>lua require('refactoring').refactor('Extract Block')<CR>", "Extract Block"},
        ["<leader>rbf"]= { "<cmd>lua require('refactoring').refactor('Extract Block To File')<CR>", "Extract Block To File"},
        ["<leader>ri"] = { "<cmd>lua require('refactoring').refactor('Inline Variable')<CR>", "Inline Variable"},
        --misc
        ["<leader>gd"] = { "<cmd>lua vim.buf.declaration<CR>", "Goto Declaration"},
        ["<leader>gD"] = { "<cmd>lua vim.buf.definition<CR>", "Goto Definition"},
        ["<leader>K"]  = { "<cmd>lua vim.lsp.buf.hover<CR>", "Hover"},
        ["<leader>td"] = { "<cmd>lua vim.diagnostic.show()<CR>", "Diagnostic Show"},
        ["<leader>te"] = { "<cmd>lua vim.diagnostic.enable()<CR>", "Diagnostic Show"},
        --lsp picker
        ["<leader>ld"] = { "<cmd>lua require('picker').diagnostics()<CR>", "Diagnostic"},
        ["<leader>ls"] = { "<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>", "Symbols"},
        ["<leader>lu"] = { "<cmd>lua require('telescope.builtin').lsp_references()<CR>", "References"},
        ["<leader>ts"] = { "<cmd>lua require('telescope.builtin').treesitter()<CR>", "Treesitter Symbols"},
        ["<leader>lv"] = { "<cmd>lua require('symbols-outline').toggle_outline()<CR>", "Structure" },
        --git picker
        ["<leader>gb"] = { "<cmd>lua require('telescope.builtin').git_branches()<CR>", "Git Branches"},
        ["<leader>gc"] = { "<cmd>lua require('telescope.builtin').git_commits()<CR>", "Git Commits"},
        ["<leader>gs"] = { "<cmd>lua require('telescope.builtin').git_stash()<CR>", "Git Stash"},
        --vim picker 
        ["<leader>vb"] = { "<cmd>lua require('telescope.builtin').buffers()<CR>", "Buffers"},
        ["<leader>vk"] = { "<cmd>lua require('telescope.builtin').keymaps()<CR>", "Keymaps"},
        ["<leader>vh"] = { "<cmd>lua require('telescope.builtin').command_history()<CR>", "Command History"},
        ["<leader>vsh"]= { "<cmd>lua require('telescope.builtin').search_history()<CR>", "Search History"},
        ["<leader>vm"] = { "<cmd>lua require('telescope.builtin').marks()<CR>", "Marks"},
        ["<leader>vq"] = { "<cmd>lua require('telescope.builtin').quickfix()<CR>", "Quickfix List"},
        ["<leader>vj"] = { "<cmd>lua require('telescope.builtin').jumplist()<CR>", "Jump List"},
        ["<leader>vr"] = { "<cmd>lua require('telescope.builtin').registers()<CR>", "Registers"},
        ["<leader>vg"] = { "<cmd>lua require('telescope.builtin').live_grep()<CR>", "Grep String"},
        ["<leader>vd"] = { "<cmd>lua require('diffview').file_history()<CR>", "Diff View Current File"},
        ["<leader>vo"] = { "<cmd>lua require('diffview').open()<CR>", "Diff View Open"},
        ["<leader>vc"] = { "<cmd>lua require('diffview').close()<CR>", "Diff View Close"},
        ["<leader>vt"] = { function() require("nvterm.terminal").new "vertical" end, "New vertical term"},
        -- harpoon
        ["<leader>ht"] = { function() require("nvterm.terminal").new "horizontal" end, "New horizontal term"},
        ["<leader>hv"] = { "<cmd>Telescope harpoon marks<CR>", "Harpoon marks show"},
        ["<leader>hm"] = { "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", "Harpoon quick menu"},
        ["<leader>hf"] = { "<cmd>lua require('harpoon.mark').add_file()<CR>", "Harpoon add file"},
        ["<C-1>"]      = { "<cmd>lua require('harpoon.ui').nav_file(1)<CR>", "Harpoon nav file 1"},
        ["<C-2>"]      = { "<cmd>lua require('harpoon.ui').nav_file(2)<CR>", "Harpoon nav file 2"},
        ["<C-3>"]      = { "<cmd>lua require('harpoon.ui').nav_file(3)<CR>", "Harpoon nav file 3"},
        ["<C-4>"]      = { "<cmd>lua require('harpoon.ui').nav_file(4)<CR>", "Harpoon nav file 4"},

    },

    v = {
        -- refactoring
        ["<leader>re"] = { "<Esc><cmd>lua require('refactoring').refactor('Extract Function')<CR>", "Extract Function"},
        ["<leader>rf"] = { "<Esc><cmd>lua require('refactoring').refactor('Extract Function To File')<CR>", "Extract Function To File"},
        ["<leader>rv"] = { "<Esc><cmd>lua require('refactoring').refactor('Extract Variable')<CR>", "Extract Variable"},
        ["<leader>ri"] = { "<Esc><cmd>lua require('refactoring').refactor('Inline Variable')<CR>", "Inline Variable"},
    }
}

return M
