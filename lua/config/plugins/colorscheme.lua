return {
	{
		'yorik1984/newpaper.nvim',
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			require('newpaper').setup {
				style = 'dark',
			}
			vim.cmd.colorscheme 'newpaper'
		end,
	},
	-- {
	--   -- Theme inspired by Atom
	--   'navarasu/onedark.nvim',
	--   priority = 1000,
	--   config = function()
	--     vim.cmd.colorscheme 'onedark'
	--   end,
	-- },
}
