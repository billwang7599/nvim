local map = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }

map("n", "<SPACE>t", ':NvimTreeToggle<ENTER>', default_opts) -- In normal mode, space+t toggles tree
map("n", ";t", ":term<ENTER>", default_opts) -- Make new terminal at the bottom
map("t", "<M-s>", ":pwd|pbcopy<CR><C-\\><C-n><ENTER>:cd <C-r>+<CR>", default_opts)
map("t", "<ESC>", "<C-\\><C-n>", default_opts) -- Escape terminal mode

--[[ WINDOWS vs TABs. Currently using tabs, so there will be overlap in keybindings, therefore commented out
-- Window management
--	Vertical split, left right movement
map("n", "<M-l>", '<C-w>l', default_opts) -- Focus right window
map("n", "<M-h>", '<C-w>h', default_opts) -- Focus left window

map("n", "<C-M-l>", ':vsplit<ENTER>', default_opts) -- In normal mode, CONTROL+ALT+L makes a new verticle window to the left
map("n", "<C-M-H>", ':vsplit<ENTER> <C-w>l', default_opts) -- In normal mode, CONTROL+ALT+h makes a new verticle window to the left 

--	Horizontal split, up down movement
map("n", "<M-k>", '<C-w>k', default_opts) -- Focus top window
map("n", "<M-j>", '<C-w>j', default_opts) -- Focus bottom window

map("n", "<C-M-K>", ':split<ENTER> <C-w>j', default_opts) -- In normal mode, CONTROL+ALT+k makes a new horizontal window above 
map("n", "<C-M-j>", ':split<ENTER>', default_opts) -- In normal mode, CONTROL+ALTj makes a new verticle window below
--]]

--	Tabs
map("n", "<C-t>", ':tabnew<ENTER>', default_opts) -- CONTROL+T: New tab
map("n", "<C-p>", ':BufferPin<ENTER>', default_opts) -- CONTROL+P: Pin/unpin tab 

map("n", "<C-l>", ':BufferNext<ENTER>', default_opts) -- CONTROL+l: go right 
map("n", "<C-h>", ':BufferPrevious<ENTER>', default_opts) -- CONTROL+h: go left 
map("n", "<M-l>", ':BufferMoveNext<ENTER>', default_opts) -- ALT + L: switch tabs with right 
map("n", "<M-h>", ':BufferMovePrevious<ENTER>', default_opts) -- ALT + H: switch tabs with left 



--	Other
map("n", "<C-w>", ':BufferClose<ENTER>', default_opts) -- Control+w will close current buffer
map("n", "<C-q>", ':q!<ENTER>', default_opts) -- Control+w will close current buffer
map("n", "<M-w>", ':BufferRestore<ENTER>', default_opts) -- ALT+W: Restore tab 
map("n", "<SPACE>w", ':w<ENTER>', default_opts) -- saves current file
--map("t", "<C-w>", ':q!<ENTER>', default_opts) -- Leaves terminal window
