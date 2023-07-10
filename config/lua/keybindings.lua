local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

map("i", ";;", "<ESC>", default_opts ) -- In insert mode, ";;" goes to normal mode 
map("n", "<SPACE>t", ':NvimTreeToggle<ENTER>', default_opts) -- In normal mode, space+t toggles tree
map("n", ";t", ":let VIM_DIR=expand('%:p:h') <ENTER> :split<ENTER> <C-w>j :terminal<ENTER> cd $VIM_DIR <ENTER> <C-\\><C-n> <C-w>k", default_opts) -- Make new terminal at the bottom
map("t", "<ESC>", "<C-\\><C-n>", default_opts) -- Escape terminal mode


-- Window management
--	Vertical split, left right movement
map("n", "<C-l>", '<C-w>l', default_opts) -- Focus right window
map("n", "<C-h>", '<C-w>h', default_opts) -- Focus left window

map("n", "<SPACE>l", ':vsplit<ENTER>', default_opts) -- In normal mode, space+l makes a new verticle window to the left
map("n", "<SPACE>h", ':vsplit<ENTER> <C-w>l', default_opts) -- In normal mode, space+h makes a new verticle window to the left 

--	Horizontal split, up down movement
map("n", "<C-k>", '<C-w>k', default_opts) -- Focus top window
map("n", "<C-j>", '<C-w>j', default_opts) -- Focus bottom window

map("n", "<SPACE>k", ':split<ENTER> <C-w>j', default_opts) -- In normal mode, space+k makes a new horizontal window above 
map("n", "<SPACE>j", ':split<ENTER>', default_opts) -- In normal mode, space+j makes a new verticle window below

--	Tabs
map("n", "<C-t>", ':tabnew<ENTER>', default_opts)

--	Other
map("n", "<C-w>", ':wq<ENTER>', default_opts) -- Control+w will save and close current file
map("n", "<C-q>", ":q<ENTER>", default_opts) -- Quits window
