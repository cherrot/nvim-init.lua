return function()
	-- dm<space> to delete all marks in the current buffer
	require("marks").setup({
		mappings = {
			toggle = "<leader><space>",
			preview = "<leader>mp",
			prev = "<leader>m<space>",
			next = "<leader>mm",
		},
	})
end
