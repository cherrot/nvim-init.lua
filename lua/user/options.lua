local options = {
	-- smartindent = true,

	-- If not set clipboard sharing, consider these:
	-- vim.keymap.set('', '<leader>y', '"+y', { noremap = true })
	-- vim.keymap.set('', '<leader>p', '"+p', { noremap = true })
	-- comment `clipboard` to fix v-block paste containing newline issue

	showcmd = true,
	signcolumn = "auto",
	-- Maximum column in which to search for syntax items.
	synmaxcol = 512,
	-- whichwrap = "h,l,<,>,[,],~",
	-- < and > mean the left/right keys in normal and visual mode. [ and ] mean the left/right arrows in insert and replace mode
	whichwrap = "<,>,[,],~",
}

return options
