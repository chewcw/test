local home = os.getenv("HOME")
local tsserver_bin = home .. "/.local/share/nvim/mason/bin/typescript-language-server"

return function(on_attach, capabilities)
	return {
		on_attach = on_attach,
		capabilities = capabilities,
		cmd = { tsserver_bin, "--stdio" },
	}
end
