-- Set leader to ' '
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Set highlight on search
vim.o.hlsearch = false
vim.o.incsearch = true

-- Make line numbers default
vim.wo.number = true
vim.wo.relativenumber = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

-- NOTE: You should make sure your terminal supports this
vim.o.termguicolors = true

-- Custom options:
-- FAT cursor
vim.o.guicursor = 'n-c-v-i:block-blinkwait300-blinkon200-blinkoff150'

vim.wo.scrolloff = 15
vim.o.scrolloff = 15

vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.autoindent = true
vim.o.smartindent = true

-- [[ Basic Keymaps ]]

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>vd', vim.diagnostic.open_float, { desc = '[V]iew floating [D]iagnostic message' })
vim.keymap.set('n', '<leader>dl', vim.diagnostic.setloclist, { desc = 'Open [D]iagnostics [L]ist' })

-- Custom remaps
vim.keymap.set('n', '<C-d>', '<C-d>zz', { silent = true })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { silent = true })
-- vim.keymap.set('n', '<leader>pv', ':Ex<cr>', { silent = true })

-- Window navigation/management
vim.keymap.set('n', '<leader>J', '<C-w>j')
vim.keymap.set('n', '<leader>K', '<C-w>k')
vim.keymap.set('n', '<leader>H', '<C-w>h')
vim.keymap.set('n', '<leader>L', '<C-w>l')
vim.keymap.set('n', '<leader>|', '<C-w>v')
vim.keymap.set('n', '<leader>-', '<C-w>s')

-- Move highlighted lines
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv")

-- Vim Fugitive keymaps
vim.keymap.set('n', '<leader>gt', vim.cmd.Git, { desc = 'Open [G]it [T]ree' })
vim.keymap.set('n', '<leader>gc', function()
  vim.cmd.Git 'commit'
end, { desc = '[C]ommit staged changes' })
vim.keymap.set('n', '<leader>gp', function()
  vim.cmd.Git 'push'
end, { desc = '[P]ush commited changes' })

-- Undotree keymaps
vim.keymap.set('n', '<leader>ut', vim.cmd.UndotreeToggle, { desc = '[T]oggle undotree' })
vim.keymap.set('n', '<leader>uf', vim.cmd.UndotreeFocus, { desc = '[F]ocus undotree' })

-- Nvimtree keymaps
vim.keymap.set('n', '<leader>nt', vim.cmd.NvimTreeToggle, { desc = '[T]oggle [N]vimTree' })
vim.keymap.set('n', '<leader>nf', vim.cmd.NvimTreeFocus, { desc = '[F]ocus [N]vimTree' })

-- Save without formatting
vim.keymap.set('n', '<leader>wnf', '<cmd>noautocmd w <CR>')

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

vim.filetype.add { extension = { templ = 'templ' } }

require 'config.lazy'
