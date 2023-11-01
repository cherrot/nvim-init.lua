local definitions = {
	ft = {
		{ "FileType", "go", "set noexpandtab shiftwidth=4" },
		{ "BufReadPost", "*.star", "set filetype=python" },
		{ "FileType", "javascript", "set expandtab shiftwidth=2" },
		{ "FileType", "javascriptreact", "set expandtab shiftwidth=2" },
		{ "FileType", "typescript", "set expandtab shiftwidth=2" },
		{ "FileType", "typescriptreact", "set expandtab shiftwidth=2" },
	},
	colorscheme = {
		-- `:hi Comment` to check current color for Comment (default is #616e88)
		-- 5% brighter #6d7a96, 10% brighter #7b88a1 from https://github.com/arcticicestudio/nord-emacs/issues/43
		{ "ColorScheme", "nord", "highlight TSComment guifg=#6d7a96" },
		-- Folded by default is #4C566A, which is too dark to recognize.
		{ "ColorScheme", "nord", "highlight Folded gui=italic,bold guifg=#576279" },
		-- Reverse bold variables set by nord.nvim
		{ "ColorScheme", "nord", "highlight TSVariable gui=NONE" },
	},
}

return definitions
