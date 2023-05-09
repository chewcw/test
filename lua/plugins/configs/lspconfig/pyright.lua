local home = os.getenv("HOME")
local pyright_bin = home .. "/.local/share/nvim/mason/bin/pyright-langserver"

return function(on_attach, capabilities)
	return {
		on_attach = on_attach,
		capabilities = capabilities,
    autostart = true,
		cmd = { pyright_bin, "--stdio" },
	}
end
