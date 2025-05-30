require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

vim.keymap.del("n", "<leader>v")
vim.keymap.del("n", "<leader>h")

map("i", "<C-h>", "<BS>")

map("n", "<leader>dR", "<cmd>lua require'dap'.run_to_cursor()<cr>", { desc = "Run to Cursor" })
map("n", "<leader>dE", "<cmd>lua require'dapui'.eval(vim.fn.input '[Expression] > ')<cr>", { desc = "Evaluate Input" })
map("n", "<leader>dC", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input '[Condition] > ')<cr>", { desc = "Conditional Breakpoint" })
map("n", "<leader>dv", "<cmd>lua require'dapui'.toggle()<cr>", { desc = "Toggle UI" })
map("n", "<leader>db", "<cmd>lua require'dap'.step_back()<cr>", { desc = "Step Back" })
map("n", "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", { desc = "Continue" })
map("n", "<leader>dr", "<cmd>lua require'dap'.restart()<cr>", { desc = "Restart" })
map("n", "<leader>dd", "<cmd>lua require'dap'.disconnect()<cr>", { desc = "Disconnect" })
map("n", "<leader>de", "<cmd>lua require'dapui'.eval()<cr>", { desc = "Evaluate" })
map("n", "<leader>dg", "<cmd>lua require'dap'.session()<cr>", { desc = "Get Session" })
map("n", "<leader>dh", "<cmd>lua require'dap.ui.widgets'.hover()<cr>", { desc = "Hover Variables" })
map("n", "<leader>dS", "<cmd>lua require'dap.ui.widgets'.scopes()<cr>", { desc = "Scopes" })
map("n", "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", { desc = "Step Into" })
map("n", "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", { desc = "Step Over" })
map("n", "<leader>dp", "<cmd>lua require'dap'.pause.toggle()<cr>", { desc = "Pause" })
map("n", "<leader>dq", "<cmd>lua require'dap'.close()<cr>", { desc = "Quit" })
map("n", "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", { desc = "Toggle Repl" })
map("n", "<leader>ds", "<cmd>lua require'dap'.continue()<cr>", { desc = "Start" })
map("n", "<leader>dt", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", { desc = "Toggle Breakpoint" })
map("n", "<leader>dx", "<cmd>lua require'dap'.terminate()<cr>", { desc = "Terminate" })
map("n", "<leader>du", "<cmd>lua require'dap'.step_out()<cr>", { desc = "Step Out" })
map("n", "<leader>ev", "<cmd>lua require'dapui'.eval()<cr>", { desc = "Evaluate" })

  -- hotkeys
map("n", "<F5>", "<cmd>lua require'dap'.restart()<cr>", { desc = "Restart" })
map("n", "<F7>", "<cmd>lua require'dap'.step_into()<cr>", { desc = "Step Into" })
map("n", "<F8>", "<cmd>lua require'dap'.step_over()<cr>", { desc = "Step Over" })
map("n", "<F9>", "<cmd>lua require'dap'.continue()<cr>", { desc = "Continue" })

-- refactor
map("n", "<leader>rb", "<cmd>lua require('refactoring').refactor('Extract Block')<CR>", { desc = "Extract Block" })
map("n", "<leader>rb", "<cmd>lua require('refactoring').refactor('Extract Block To File')<CR>", { desc = "Extract Block To File" })
map("n", "<leader>ri", "<cmd>lua require('refactoring').refactor('Inline Variable')<CR>", { desc = "Inline Variable" })
map("n", "<leader>rn", function() return ":IncRename " .. vim.fn.expand("<cword>") end, { expr = true })

-- misc
map("n", "<leader>gd", "<cmd>lua vim.lsp.buf.declaration()<CR>", { desc = "Goto Declaration" })
map("n", "<leader>gD", "<cmd>lua vim.lsp.buf.definition()<CR>", { desc = "Goto Definition" })
map("n", "<leader>K", "<cmd>lua vim.lsp.buf.hover<CR>", { desc = "Hover" })
map("n", "<leader>td", "<cmd>lua vim.diagnostic.show()<CR>", { desc = "Diagnostic Show" })
map("n", "<leader>te", "<cmd>lua vim.diagnostic.enable()<CR>", { desc = "Diagnostic Show" })

-- lsp pic<leader>ket
map("n", "<leader>ld", "<cmd>Telescope diagnostics<CR>", { desc = "Diagnostic" })
map("n", "<leader>ls", "<cmd>lua require('telescope.builtin').lsp_document_symbols()<CR>", { desc = "Symbols" })
map("n", "<leader>lu", "<cmd>lua require('telescope.builtin').lsp_references()<CR>", { desc = "References" })
map("n", "<leader>ts", "<cmd>lua require('telescope.builtin').treesitter()<CR>", { desc = "Treesitter Symbols" })
map("n", "<leader>lv", "<cmd>lua require('symbols-outline').toggle_outline()<CR>", { desc = "Structure" })
map("n", "<leader>lf", "<cmd>lua vim.diagnostic.open_float()<CR>", { desc = "Open Float" })

-- git pic<leader>ker
map("n", "<leader>gb", "<cmd>lua require('telescope.builtin').git_branches()<CR>", { desc = "Git Branches" })
map("n", "<leader>gc", "<cmd>lua require('telescope.builtin').git_commits()<CR>", { desc = "Git Commits" })
map("n", "<leader>gs", "<cmd>lua require('telescope.builtin').git_stash()<CR>", { desc = "Git Stash" })

-- vim pic<leader>ker
map("n", "<leader>vb", "<cmd>lua require('telescope.builtin').buffers()<CR>", { desc = "Buffers" })
map("n", "<leader>vk", "<cmd>lua require('telescope.builtin').keymaps()<CR>", { desc = "Keymaps" })
map("n", "<leader>vh", "<cmd>lua require('telescope.builtin').command_history()<CR>", { desc = "Command History" })
map("n", "<leader>vs", "<cmd>lua require('telescope.builtin').search_history()<CR>", { desc = "Search History" })
map("n", "<leader>vm", "<cmd>lua require('telescope.builtin').marks()<CR>", { desc = "Marks" })
map("n", "<leader>vq", "<cmd>lua require('telescope.builtin').quickfix()<CR>", { desc = "Quickfix List" })
map("n", "<leader>vj", "<cmd>lua require('telescope.builtin').jumplist()<CR>", { desc = "Jump List" })
map("n", "<leader>vr", "<cmd>lua require('telescope.builtin').registers()<CR>", { desc = "Registers" })
map("n", "<leader>vg", "<cmd>lua require('telescope.builtin').live_grep()<CR>", { desc = "Grep String" })
map("n", "<leader>vd", "<cmd>lua require('diffview').file_history()<CR>", { desc = "Diff View Current File" })
map("n", "<leader>vo", "<cmd>lua require('diffview').open()<CR>", { desc = "Diff View Open" })
map("n", "<leader>vc", "<cmd>lua require('diffview').close()<CR>", { desc = "Diff View Close" })
map("n", "<leader>vt", function() require("nvterm.terminal").new "vertical" end, { desc = "New vertical term" })

        --<leader> harpoon
map("n", "<leader>ht", function() require("nvterm.terminal").new "horizontal" end, { desc = "New horizontal term" })
map("n", "<leader>hv", "<cmd>Telescope harpoon marks<CR>", { desc = "Harpoon marks show" })
map("n", "<leader>hm", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", { desc = "Harpoon quick menu"} )
map("n", "<leader>hf", "<cmd>lua require('harpoon.mark').add_file()<CR>", { desc = "Harpoon add file" })
map("n", "<C-1>", "<cmd>lua require('harpoon.ui').nav_file(1)<CR>", { desc = "Harpoon nav file 1" })
map("n", "<C-2>", "<cmd>lua require('harpoon.ui').nav_file(2)<CR>", { desc = "Harpoon nav file 2" })
map("n", "<C-3>", "<cmd>lua require('harpoon.ui').nav_file(3)<CR>", { desc = "Harpoon nav file 3" })
map("n", "<C-4>", "<cmd>lua require('harpoon.ui').nav_file(4)<CR>", { desc = "Harpoon nav file 4" })

        -- refactoring
map("v", "<leader>re", "<Esc><cmd>lua require('refactoring').refactor('Extract Function')<CR>", { desc = "Extract Function"})
map("v", "<leader>rf", "<Esc><cmd>lua require('refactoring').refactor('Extract Function To File')<CR>", { desc = "Extract Function To File"})
map("v", "<leader>rv", "<Esc><cmd>lua require('refactoring').refactor('Extract Variable')<CR>", { desc = "Extract Variable"})
map("v", "<leader>ri", "<Esc><cmd>lua require('refactoring').refactor('Inline Variable')<CR>", { desc = "Inline Variable"})

