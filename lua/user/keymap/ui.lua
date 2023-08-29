local bind = require("keymap.bind")
local map_cr = bind.map_cr
return {
	-- Plugin: bufferline
	["n|<leader>bb"] = map_cr("BufferLinePick"):with_noremap():with_silent():with_desc("buffer: Pick by shortcut"),
}
