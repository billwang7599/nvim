local options = {
	number = true,
	relativenumber = true,
	shiftwidth = 4,
	tabstop = 4,
	softtabstop = 4,
	smartindent = true,
	colorcolumn = "80",
}

for k, v in pairs(options) do 
	vim.opt[k] = v
end

-- terminal stuff
vim.api.nvim_command("autocmd TermOpen * startinsert")             -- starts in insert mode
vim.api.nvim_command("autocmd TermOpen * setlocal nonumber norelativenumber")       -- no numbers
vim.api.nvim_command("autocmd TermEnter * setlocal signcolumn=no") -- no sign column
