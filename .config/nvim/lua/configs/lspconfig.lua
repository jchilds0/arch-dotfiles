require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls" , "clangd", "pylsp", "texlab", "gopls", "hls", "rust_analyzer"}
vim.lsp.enable(servers)

-- to configure lsps further read :h vim.lsp.config
