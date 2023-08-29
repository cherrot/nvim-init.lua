local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cmd = bind.map_cmd

return {
	-- Tab equals C-i in vim, which is used to jump forward
	["n|<S-Tab>"] = map_cr("normal zA"):with_noremap():with_silent():with_desc("edit: Toggle all folds under cursor"),
	["n|<Space>"] = map_cr("normal za"):with_noremap():with_silent():with_desc("edit: Toggle code fold"),
	["n|<A-c>"] = map_cr("tabclose"):with_noremap():with_silent():with_desc("edit: Close tab"),
	["n|<leader>q"] = map_cr("cclose"):with_desc("edit: Close quickfix window"),

	["t|<C-h>"] = "",
	["t|<C-l>"] = "",
	["t|<C-j>"] = "",
	["t|<C-k>"] = "",
	["t|<C-w>k"] = map_cmd("<Cmd>wincmd k<CR>"):with_silent():with_noremap():with_desc("window: Focus up"),
	["t|<C-w>h"] = map_cmd("<Cmd>wincmd h<CR>"):with_silent():with_noremap():with_desc("window: Focus left"),
	["t|<C-w>l"] = map_cmd("<Cmd>wincmd l<CR>"):with_silent():with_noremap():with_desc("window: Focus right"),
	["t|<C-w>j"] = map_cmd("<Cmd>wincmd j<CR>"):with_silent():with_noremap():with_desc("window: Focus down"),
}
