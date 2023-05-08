local null_ls = require "null-ls"

local formatting = null_ls.builtins.formatting
local lint = null_ls.builtins.diagnostics

null_ls.setup({
  debug = true,
  sources = {
    formatting.prettier.with({
      extra_args = {
        "--single-quote",
        "--jsx-single-quote",
        "--end-of-line lf"
      }
    }),
    formatting.stylua,

    lint.shellcheck,
  },
})
