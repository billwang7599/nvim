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
		"folke/which-key.nvim",
		{ "folke/neoconf.nvim", cmd = "Neoconf" },
		"folke/neodev.nvim",
		'nvim-tree/nvim-web-devicons',
		{
				"nvim-tree/nvim-tree.lua",
				version = "*",
				lazy = false,
				dependencies = {
				"nvim-tree/nvim-web-devicons",
				},
				config = function()
				require("nvim-tree").setup {}
				end, 
		},
}
