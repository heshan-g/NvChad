local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

lspconfig.tsserver.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {
    "typescript",
    "typescriptreact",
    "typescript.tsx",
    "javascript",
    "javascriptreact",
    "javascript.jsx"
  },
  init_options = {
    hostInfo = "neovim"
  },
  root_dir = lspconfig.util.root_pattern(
    "package.json",
    "tsconfig.json",
    "jsconfig.json"
    -- ".git"
  )
})
