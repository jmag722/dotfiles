vim.pack.add({ 'https://github.com/neovim/nvim-lspconfig' })

local util = require('lspconfig.util')
-- set root dir based on presence of the following
vim.lsp.config('*', {
    root_markers = { '.git' },
})

vim.lsp.enable('pyright')
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'LSP Goto Definition' })

local capabilities = require('blink.cmp').get_lsp_capabilities()
-- Repeat this for each of your language servers
vim.lsp.config('lua_ls', {
     capabilities = capabilities,
})

vim.lsp.config('clangd', {
    capabilities = capabilities,
})

vim.lsp.config('python', {
    capabilities = capabilities,
})
