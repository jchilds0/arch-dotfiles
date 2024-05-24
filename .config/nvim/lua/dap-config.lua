local M = {} 

M.adapters = {
    lldb = {
        type = 'executable',
        command = 'lldb-vscode',
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
                return {vim.fn.input('Args: ')}
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
            stopOnEntry = true,
            logFile = vim.fn.stdpath('data') .. '/haskell-dap.log',
            logLevel = 'WARNING',
            ghciEnv = vim.empty_dict(),
            ghciPrompt = "λ: ",
            -- Adjust the prompt to the prompt you see when you invoke the stack ghci command below 
            ghciInitialPrompt = "λ: ",
            ghciCmd= "stack ghci --test --no-load --no-build --main-is TARGET --ghci-options -fprint-evld-with-show",
        }
    }
}

return M
