vim.g.mapleader = " "

local function keymap(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

vim.keymap.set('n', '<C-d>', '<C-d>zz', {})
vim.keymap.set('n', '<C-u>', '<C-u>zz', {})
keymap("n", "<leader>pv", ":Ex<cr>")
keymap('n', '<leader>u', ':UndotreeToggle<cr>')

keymap('n', '<leader>J', '<C-w>j')
keymap('n', '<leader>K', '<C-w>k')
keymap('n', '<leader>H', '<C-w>h')
keymap('n', '<leader>L', '<C-w>l')
keymap('n', '<leader>|', '<C-w>v')
keymap('n', '<leader>-', '<C-w>s')

keymap('v', '<A-j>', ':m \'>+1<CR>gv=gv')
keymap('v', '<A-k>', ':m \'<-2<CR>gv=gv')
keymap('n', '<leader>c', 'yyp')
keymap('x', '<leader>p', '"_dp')

keymap('n', '<leader>x', '<cmd>!chmod +x %<cr>', {silent = true})

