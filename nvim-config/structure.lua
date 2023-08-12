local bufout = 77
local bufnr = 35

local params = {
    textDocument = vim.lsp.util.make_text_document_params(bufnr),
}

local formatter = function(symbol)
    local db = {
        Struct = symbol.text,
        Field = "    " .. symbol.text,
        Function = symbol.text,
    }

    return db[symbol.kind]
end

vim.api.nvim_create_autocmd("BufWritePost", {
    group = vim.api.nvim_create_augroup("Structure", { clear = true }),
    pattern = "symplectic_basis.c",
    callback = function()
        --data = require('telescope.builtin').treesitter()
        vim.api.nvim_buf_set_lines(bufout, 0, -1, false, { "Structure" })

        vim.lsp.buf_request(bufnr, "textDocument/documentSymbol", params, function(err, result, _, _)
            if err then
                print('Error', err)
                return
            end

            local locations = vim.lsp.util.symbols_to_items(result, bufnr)

            for _, symbol in ipairs(locations) do
                vim.api.nvim_buf_set_lines(bufout, -1, -1, false, { formatter(symbol) })
            end

        end)
    end,
})
