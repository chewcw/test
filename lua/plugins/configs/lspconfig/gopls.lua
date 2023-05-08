local home = os.getenv("HOME")
local gopls_bin = home .. "/.local/share/nvim/mason/bin/gopls"

return function(on_attach, capabilities)
	return {
		on_attach = on_attach,
		capabilities = capabilities,
		cmd = { gopls_bin },
	}
end
