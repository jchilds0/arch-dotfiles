local M = {} 

M.adapters = {
    lldb = {
        type = 'executable',
        command = 'lldb-vscode',
        name = 'lldb',
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
}

return M
