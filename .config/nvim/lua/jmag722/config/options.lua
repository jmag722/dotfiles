-- fixes cursor shapes, allows terminal app to control cursor
-- entirely
vim.opt.guicursor = ""

-- absolute number on current line
vim.opt.nu = true
-- relative line numbers for all other lines
vim.opt.relativenumber = true

-- completely disable mouse in editor
vim.opt.mouse = ""

-- if you had literal tab, this is how big it'll look
vim.opt.tabstop = 4
-- how many spaces the Tab key jumps over
vim.opt.softtabstop = 4
-- number of spaces used for indentation
vim.opt.shiftwidth = 4
-- pressing Tab inserts spaces equivalent to softtabstop value
vim.opt.expandtab = true

-- wrap long lines
vim.opt.wrap = false

-- disable swp files
vim.opt.swapfile = false
-- disable backup
vim.opt.backup = false
-- set up undofiles and location
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- highlight all searches
vim.opt.hlsearch = false
-- highlights first matching text in file while typing
vim.opt.incsearch = true

-- allow editor to render full colors
vim.opt.termguicolors = true
vim.opt.background = "light"

-- keeps at least N lines above/below cursor when scrolling
vim.opt.scrolloff = 8
-- column permanently visible 
vim.opt.signcolumn = "yes"

-- how many inactive ms must pass before background events
vim.opt.updatetime = 50

vim.opt.colorcolumn = "80,100,120"

