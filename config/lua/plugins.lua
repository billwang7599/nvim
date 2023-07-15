return {
	{
		"ellisonleao/gruvbox.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
		-- load the colorscheme here
		vim.cmd([[colorscheme gruvbox]])
		vim.cmd([[set background=light]])
		end,
	},
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		config = function()
		require("nvim-tree").setup {}
		end, 
	},
	{
		'glepnir/dashboard-nvim',
		event = 'VimEnter',
		config = function()
		require('dashboard').setup {}
		end,
		dependencies = { {'nvim-tree/nvim-web-devicons'}}
	},
	{
		'romgrk/barbar.nvim',
		dependencies = {
	  		'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
	  		'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
			},
		init = function() vim.g.barbar_auto_setup = false end,
		opts = {
		  -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
		  animation = true,
		  insert_at_start = true,
		  -- …etc.
		},
	},
	{
		'willothy/flatten.nvim',
		config = true,
		-- or pass configuration with
		-- opts = {  }
		-- Ensure that it runs first to minimize delay when opening file from terminal
		lazy = false, priority = 1001,
	},
	{
		"konapun/vacuumline.nvim",
		dependencies = {'glepnir/galaxyline.nvim',}
	},
	{ 
		'Bekaboo/deadcolumn.nvim' ,
	},
}
