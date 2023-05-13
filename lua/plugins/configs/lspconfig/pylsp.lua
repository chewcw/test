local home = os.getenv("HOME")
local pylsp_bin = home .. "/.local/share/nvim/mason/bin/pylsp"

return function(on_attach, capabilities)
	return {
		on_attach = on_attach,
		capabilities = capabilities,
		cmd = { pylsp_bin },
	}
end
