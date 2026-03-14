require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls" }
vim.lsp.enable(servers)

local lsps = { "clangd", "rust-analyzer", "basedpyright"}
vim.lsp.enable(lsps)

-- read :h vim.lsp.config for changing options of lsp servers 
