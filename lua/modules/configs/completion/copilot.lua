return function()
	vim.defer_fn(function()
		require("copilot").setup({
			cmp = {
				enabled = true,
				method = "getCompletionsCycling",
			},
			panel = {
				-- if true, it can interfere with completions in copilot-cmp
				enabled = true,
				auto_refresh = false,
				keymap = {
					jump_prev = "[[",
					jump_next = "]]",
					accept = "<CR>",
					refresh = "gr",
					open = "<M-CR>",
				},
				layout = {
					position = "right",
					ratio = 0.4,
				},
			},
			suggestion = {
				-- if true, it can interfere with completions in copilot-cmp
				enabled = false,
				auto_trigger = false,
				debounce = 75,
				keymap = {
					accept = "<M-l>",
					accept_word = false,
					accept_line = false,
					next = "<M-]>",
					prev = "<M-[>",
					dismiss = "<C-]>",
				},
			},
			filetypes = {
				["dap-repl"] = false,
				["big_file_disabled_ft"] = false,
			},
		})
	end, 100)
end
