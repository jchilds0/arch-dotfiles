local M = {} 

M.adapters = {
    lldb = {
        type = 'executable',
        command = 'lldb-dap',
        name = 'lldb',
    },
    haskell = {
        type = "executable",
        command = "haskell-debug-adapter",
        args = {"--hackage-version=0.0.33.0"},
    },
}

M.configurations = {
    c = {
        {
            name = 'Launch',
            type = 'lldb',
            request = 'launch',
            cwd = function()
                return vim.fn.input('Working Directory: ', vim.fn.getcwd() .. '/', 'file')
            end,
            program = function()
                return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
            end,
            stopOnEntry = false,
            args = function()
                local input = vim.fn.input('Args: ')
                local as = {}

                for str in string.gmatch(input, "([^%s]+)") do
                    table.insert(as, str)
                end

                return as
            end,
        }
    },
    haskell = {
        {
            type = 'haskell',
            request = 'launch',
            name = 'Debug',
            workspace = '${workspaceFolder}',
            startup = "${file}",
            stopOnEntry = false,
            logFile = vim.fn.stdpath('data') .. '/haskell-dap.log',
            logLevel = 'WARNING',
            ghciEnv = vim.empty_dict(),
            ghciPrompt = "λ: ",
            -- Adjust the prompt to the prompt you see when you invoke the stack ghci command below 
            ghciInitialPrompt = "> ",
            ghciCmd= "cabal exec -- ghci-dap --interactive -i -i${workspaceFolder}",
        }
    }
}

return M
