vim.api.nvim_set_hl(0, 'Cursor', {fg = "#445588", bg = "#445588"})
vim.api.nvim_set_hl(0, 'lCursor', {fg = "#445588", bg = "#445588"})
vim.opt.guicursor = 'n-c-v-i:block-Cursor/lCursor-blinkwait300-blinkon200-blinkoff150'

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.smartindent = true

vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 15

vim.opt.updatetime = 50

vim.opt.colorcolumn = "83"

