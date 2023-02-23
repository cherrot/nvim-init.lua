local custom = {}

custom["rhysd/git-messenger.vim"] = {
	lazy = true,
	cmd = "GitMessenger",
	keys = "<leader>gm",
	config = function()
		vim.g.git_messenger_always_into_popup = true
	end,
}
custom["qpkorr/vim-renamer"] = {
	lazy = true,
	cmd = "Renamer",
}
custom["chentoast/marks.nvim"] = {
	lazy = true,
	event = "BufReadPost",
}
custom["powerman/vim-plugin-AnsiEsc"] = {
	lazy = true,
	cmd = "AnsiEsc",
}

return custom
