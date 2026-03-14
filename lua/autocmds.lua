require "nvchad.autocmds"

require("godot-lsp").setup({
  port = 6005,
  fallback_port = 6006,
  auto_start = true,
  debug = false,
  silent = true,
})
