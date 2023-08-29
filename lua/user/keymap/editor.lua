local bind = require("keymap.bind")
local map_callback = bind.map_callback
local et = bind.escape_termcode

return {
	-- Plugin: clever-f
	["n|;"] = "",
	["n|,"] = "",
	["n|<C-.>"] = map_callback(function()
		return et("<Plug>(clever-f-repeat-forward)")
	end):with_expr(),
	["n|<C-,>"] = map_callback(function()
		return et("<Plug>(clever-f-repeat-back)")
	end):with_expr(),
}
