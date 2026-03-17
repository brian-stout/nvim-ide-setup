require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map('n', '<Leader>rc', ':cclose<CR>', { desc = "Close quick window for lsp.ref", noremap = true, silent = true })

vim.api.nvim_create_user_command('DiagnosticsToggleVirtualText', function()
    local current_value = vim.diagnostic.config().virtual_text
    if current_value then
        vim.diagnostic.config({ virtual_text = false })
        print("Virtual text disabled")
    -- else
        vim.diagnostic.config({ virtual_text = true })
        print("Virtual text enabled")
    end
end, {})

vim.keymap.set("n", "<leader>dv", ":DiagnosticsToggleVirtualText<cr>", { desc = "Toggle LSP virtual text" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
