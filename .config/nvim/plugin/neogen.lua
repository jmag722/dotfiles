vim.pack.add({
    'https://github.com/danymat/neogen'
})


require('neogen').setup({
    enabled = true,
    --snippet_engine = "luasnip",
    languages = {
        python = {
            template = { annotation_convention = 'google_docstrings' }
        },
    }
})

local opts = { noremap = true, silent = true, buffer = true }
vim.keymap.set('n', '<Leader>nc', ':Neogen<CR>', opts) 

