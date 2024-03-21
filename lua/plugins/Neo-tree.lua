return {
	'nvim-neo-tree/neo-tree.nvim',
	branch = 'v3.x',
	lazy = false,
	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-tree/nvim-web-devicons',
		'MunifTanjim/nui.nvim'
	},
	keys = {
		{
			'<F3>',
			'<cmd>Neotree toggle<cr>',
			desc = 'Toggle Neotree'
		}
	},
	config = function()
		require('neo-tree').setup()
	end
}
