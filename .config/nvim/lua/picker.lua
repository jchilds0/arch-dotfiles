local pickers = require "telescope.pickers"
local finders = require "telescope.finders"
local conf = require("telescope.config").values
local actions = require "telescope.actions"
local action_state = require "telescope.actions.state"
local picker = {}

local diagnostic_to_string = function(line)
    local sev

    if line['severity'] == 4 then
        sev = "HINT"
    elseif line['severity'] == 3 then
        sev = "INFO"
    elseif line['severity'] == 2 then
        sev = "WARN"
    elseif line['severity'] == 1 then
        sev = "ERROR"
    end

    return sev .. string.rep(' ', 10 - string.len(sev)) .. line['message']
end

-- our picker function: colors
function picker.diagnostics(opts)
  opts = opts or {}
  pickers.new(opts, {
    prompt_title = "Diagnostics",
    finder = finders.new_table {
        results = vim.diagnostic.get(0, {}),
        entry_maker = function(entry)
            return {
                value = entry,
                display = diagnostic_to_string(entry),
                ordinal = tostring(entry['lnum']),
                lnum = entry['lnum'],
                path = vim.api.nvim_buf_get_name(0),
            }
        end
    },
    sorter = conf.generic_sorter(opts),
    previewer = conf.grep_previewer(opts),
    attach_mappings = function (prompt_bufnr, map)
        actions.select_default:replace(function()
            actions.close(prompt_bufnr)
            local selection = action_state.get_selected_entry()
            -- print(vim.inspect(selection))
            vim.api.nvim_put({ selection[1] }, "", false, true)
        end)
        return true
    end,
  }):find()
end

return picker
