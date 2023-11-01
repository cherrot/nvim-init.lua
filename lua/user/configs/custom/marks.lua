return function()
	-- dm<space> to delete all marks in the current buffer
	require("modules.utils").load_plugin("marks", {
		mappings = {
			toggle = "<leader><space>",
			preview = "<leader>mp",
			prev = "<leader>m<space>",
			next = "<leader>mm",
		},
	})
end
