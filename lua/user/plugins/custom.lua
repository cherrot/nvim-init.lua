-- https://github.com/ayamir/nvimdots/wiki/Usage#add-a-new-plugin
local custom = {}

custom["pysan3/fcitx5.nvim"] = {
	lazy = true,
	event = "BufReadPost",
	cond = vim.fn.executable("fcitx5-remote") == 1,
	config = require("tool.fcitx5"),
}
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
	config = require("user.configs.custom.marks"),
}
custom["powerman/vim-plugin-AnsiEsc"] = {
	lazy = true,
	cmd = "AnsiEsc",
}

return custom
