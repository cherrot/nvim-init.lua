local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cmd = bind.map_cmd
local map_callback = bind.map_callback

return {
	-- Plugin: nvim-tree
	["n|<C-n>"] = "",
	["n|<A-n>"] = map_cr("NvimTreeToggle"):with_noremap():with_silent():with_desc("filetree: Toggle"),

	-- Plugin: toggleterm
	["t|jk"] = "",
	["n|<C-\\>"] = "",
	["i|<C-\\>"] = "",
	["t|<C-\\>"] = "",
	["n|<A-\\>"] = "",
	["i|<A-\\>"] = "",
	["t|<A-\\>"] = "",
	["n|<F5>"] = "",
	["i|<F5>"] = "",
	["t|<F5>"] = "",
	["n|<C-->"] = map_cr([[execute v:count . "ToggleTerm direction=horizontal"]])
		:with_noremap()
		:with_silent()
		:with_desc("terminal: Toggle horizontal"),
	["i|<C-->"] = map_cmd("<Esc><Cmd>ToggleTerm direction=horizontal<CR>")
		:with_noremap()
		:with_silent()
		:with_desc("terminal: Toggle horizontal"),
	["t|<C-->"] = map_cmd("<Cmd>ToggleTerm<CR>"):with_noremap():with_silent():with_desc("terminal: Toggle horizontal"),
	["n|<C-=>"] = map_cr([[execute v:count . "ToggleTerm direction=vertical"]])
		:with_noremap()
		:with_silent()
		:with_desc("terminal: Toggle vertical"),
	["i|<C-=>"] = map_cmd("<Esc><Cmd>ToggleTerm direction=vertical<CR>")
		:with_noremap()
		:with_silent()
		:with_desc("terminal: Toggle vertical"),
	["t|<C-=>"] = map_cmd("<Cmd>ToggleTerm<CR>"):with_noremap():with_silent():with_desc("terminal: Toggle vertical"),

	-- Plugin: trouble
	["n|gt"] = "",
	["n|<leader>tt"] = map_cr("TroubleToggle"):with_noremap():with_silent():with_desc("lsp: Toggle trouble list"),

	-- Plugin: dap
	["n|<leader>dr"] = map_cr("lua require('dap').continue()")
		:with_noremap()
		:with_silent()
		:with_desc("debug: Run/Continue"),
	["n|<leader>dB"] = map_cr("lua require('dap').toggle_breakpoint()")
		:with_noremap()
		:with_silent()
		:with_desc("debug: Toggle breakpoint"),
	["n|<leader>dd"] = map_cr("lua require('dap').terminate() require('dapui').close()")
		:with_noremap()
		:with_silent()
		:with_desc("debug: Stop"),

	-- Plugin: telescope
	["n|<C-p>"] = "", -- cmp already takes this to query keymaps
	["n|<C-t>"] = map_callback(function()
			_command_panel()
		end)
		:with_noremap()
		:with_silent()
		:with_desc("tool: Toggle command panel"),

	-- Plugin: marks
	["n|mm"] = map_cr("lua require('marks').toggle()"):with_noremap():with_silent():with_desc("marks: Toggle"),
	["n|mx"] = map_cr("lua require('marks').delete_buf()")
		:with_noremap()
		:with_silent()
		:with_desc("marks: Delete buffer"),
	["n|m:"] = map_cr("lua require('marks').preview()"):with_noremap():with_silent():with_desc("marks: Preview"),
	["n|m["] = map_cr("lua require('marks').prev()"):with_noremap():with_silent():with_desc("marks: Previous"),
	["n|m]"] = map_cr("lua require('marks').next()"):with_noremap():with_silent():with_desc("marks: Next"),
	["n|ml"] = map_cr("MarksListAll"):with_noremap():with_silent():with_desc("marks: List marks in all open buffers"),
}
