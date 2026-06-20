vim.pack.add({ 'https://github.com/neovim/nvim-lspconfig' })

vim.lsp.enable('pyright')
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'LSP Goto Definition' })

