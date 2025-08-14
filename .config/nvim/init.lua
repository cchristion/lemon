vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.o.signcolumn = 'auto'

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.undodir = os.getenv("XDG_CACHE_HOME") .. "/nvim/undodir"
vim.opt.viminfofile = os.getenv("XDG_STATE_HOME") .. "/nvim/viminfo"
vim.opt.undofile = true
vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- Disable line numbers in terminal buffers
vim.cmd("autocmd TermOpen * setlocal nonumber norelativenumber")

-- Auto reload
vim.cmd("autocmd FocusGained,BufEnter * checktime")

-- Transparent Background
vim.cmd [[
highlight Normal guibg=none
highlight NonText guibg=none
highlight Normal ctermbg=none
highlight NonText ctermbg=none
]]
