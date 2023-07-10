local options = {
	number = true,
	relativenumber = true,
	shiftwidth = 4,
	tabstop = 4,
	softtabstop = 4,
	smartindent = true,
	}

for k, v in pairs(options) do 
	vim.opt[k] = v
end

vim.g.mapleader = " "

