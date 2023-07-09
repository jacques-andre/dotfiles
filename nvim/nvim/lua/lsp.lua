local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.ensure_installed({
  'tsserver',
  'lua_ls',
  'jedi_language_server',
  'gopls',
  'jsonls',
  'tailwindcss'
})

require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
