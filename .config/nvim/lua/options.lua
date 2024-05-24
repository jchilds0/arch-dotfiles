require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

local vimrc = "~/.vimrc"
vim.cmd('source ' .. vimrc)
vim.cmd('set rnu!')

vim.opt.colorcolumn = "118"
vim.diagnostic.config({ virtual_text = true })

--vim.api.nvim_create_autocmd("FileType", { pattern = "*.ui", command = "setlocal shiftwidth=2 tabstop=2" })

vim.api.nvim_create_autocmd("BufWritePost", { pattern = "*.go", command = "silent! :!gofmt -e -w %" })

-- illuminate 

vim.api.nvim_set_hl(0, "IlluminatedWordText", { link = "Visual" })
vim.api.nvim_set_hl(0, "IlluminatedWordRead", { link = "Visual" })
vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { link = "Visual" })

-- dap

vim.fn.sign_define('DapBreakpoint', { text="⏺", texthl='red', linehl='DapBreakpoint', numhl='DapBreakpoint' })
vim.fn.sign_define('DapBreakpointCondition', { text='ﳁ', texthl='DapBreakpoint', linehl='DapBreakpoint', numhl='DapBreakpoint' })
vim.fn.sign_define('DapBreakpointRejected', { text='', texthl='DapBreakpoint', linehl='DapBreakpoint', numhl= 'DapBreakpoint' })
vim.fn.sign_define('DapLogPoint', { text='', texthl='DapLogPoint', linehl='DapLogPoint', numhl= 'DapLogPoint' })
vim.fn.sign_define('DapStopped', { text='', texthl='DapStopped', linehl='DapStopped', numhl= 'DapStopped' }) 

