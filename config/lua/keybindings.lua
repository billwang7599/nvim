local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

map("i", ";;", "<ESC>", default_opts ) -- In insert mode, ";;" goes to normal mode 
map("n", "<SPACE>t", ':NvimTreeToggle<ENTER>', default_opts) -- In normal mode, space+t toggles tree
