require('lualine').setup {
	options = {
		icons_enabled = true,
		theme = 'auto',
 component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = true,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		}
	},
	sections = {
		lualine_a = {'mode'},
		lualine_b = {'windows'},
		lualine_c = {
			{
				'diagnostic',
				sources = {'nvim_diagnostics', 'nvim_lsp', 'coc', 'vim_lsp'},
				sections = { 'error', 'warn', 'info', 'hint' },

				symbols = {error = 'E', warn = 'W', info = 'I', hint = 'H'},
				colored = true,
				update_in_insert = true,
				always_visible = true,
			}
		},
		lualine_x = {'encoding', 'fileformat'},
		lualine_y = {'branch', 'diff'},
		lualine_z = {'progress', 'location'}
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = {'filename'},
		lualine_x = {'location'},
		lualine_y = {},
		lualine_z = {}
	},
	tabline = {
		lualine_a = {},
		lualine_b = {'branch'},
		lualine_c = {'filename'},
		lualine_x = {},
		lualine_y = {},
		lualine_z = {}
	},
	extensions = {}
}
