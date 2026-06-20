vim.api.nvim_create_autocmd('PackChanged', { callback = function(ev)
  local name, kind = ev.data.spec.name, ev.data.kind
  if name == 'nvim-treesitter' and kind == 'update' then
    if not ev.data.active then vim.cmd.packadd('nvim-treesitter') end
    vim.cmd('TSUpdate')
  end
end })
vim.pack.add({ 'https://github.com/nvim-treesitter/nvim-treesitter' })

require('nvim-treesitter').install({
    'python', 'c', 'cpp', 'bash'
})
require('nvim-treesitter.config').setup({
    ensure_installed = {
        'c', 'cpp', 'lua', 'python', 'bash',
    },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = true
    },
    indent = { enable = true },
    auto_install = true,
})

vim.treesitter.start()

