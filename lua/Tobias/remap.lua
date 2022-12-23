local function keymap(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

keymap("n", "<leader>pv", ":Ex<enter>")
vim.keymap.set('n', '<C-d>', '<C-d>zz', {})
vim.keymap.set('n', '<C-u>', '<C-u>zz', {})
keymap('n', '<leader>u', ':UndotreeToggle')
keymap('n', '<leader>J', '<C-w>j')
keymap('n', '<leader>K', '<C-w>k')
keymap('n', '<leader>H', '<C-w>h')
keymap('n', '<leader>L', '<C-w>l')
