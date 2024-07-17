-- https://github.com/neovim/nvim-lspconfig/blob/master/lua/lspconfig/server_configurations/helm_ls.lua
return {
	settings = {
		["helm-ls"] = {
			yamlls = {
				path = "yaml-language-server",
			},
		},
	},
}
