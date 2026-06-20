vim.api.nvim_create_autocmd('PackChanged', { callback = function(ev)
  local name, kind = ev.data.spec.name, ev.data.kind
  if name == 'nvim-treesitter' and kind == 'update' then
    if not ev.data.active then vim.cmd.packadd('nvim-treesitter') end
    vim.cmd('TSUpdate')
  end
end })
vim.pack.add({ 'https://github.com/nvim-treesitter/nvim-treesitter' })

require('nvim-treesitter.config').setup({
    ensure_installed = {
        'bash',
        'c',
        'cpp',
        'diff',
        'gitcommit',
        'git_rebase',
        'python',
    },
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = true
    },
    indent = { enable = true },
    auto_install = true,
})

--start Treesitter when filetype is specified (so no errors when 'nvim' only)
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'python', 'lua', 'javascript', 'html' }, -- Add your specific filetypes here
  callback = function()
    pcall(vim.treesitter.start)
  end,
})
