return {
	{
		'folke/which-key.nvim',
		opts = {},
		config = function()
			require('which-key').add {
				{ '<leader>c',  group = '[C]ode' },
				{ '<leader>c_', hidden = true },
				{ '<leader>d',  group = '[D]ocument' },
				{ '<leader>d_', hidden = true },
				{ '<leader>g',  group = '[G]it' },
				{ '<leader>g_', hidden = true },
				{ '<leader>h',  group = 'Git [H]unk' },
				{ '<leader>h_', hidden = true },
				{ '<leader>r',  group = '[R]ename' },
				{ '<leader>r_', hidden = true },
				{ '<leader>s',  group = '[S]earch' },
				{ '<leader>s_', hidden = true },
				{ '<leader>t',  group = '[T]oggle' },
				{ '<leader>t_', hidden = true },
				{ '<leader>w',  group = '[W]orkspace' },
				{ '<leader>w_', hidden = true },
				{ '<leader>u',  group = '[U]ndotree' },
				{ '<leader>u_', hidden = true },
				{ '<leader>n',  group = '[N]vimtree' },
				{ '<leader>n_', hidden = true },
			}
			-- register which-key VISUAL mode
			-- required for visual <leader>hs (hunk stage) to work
			require('which-key').add({
				{ '<leader>',  group = 'VISUAL <leader>' },
				{ '<leader>h', 'Git [H]ugroup' },
			}, { mode = 'v' })
		end,
	},
}
