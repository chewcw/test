local home = os.getenv("HOME")
local omnisharp_bin = home .. "/.local/share/nvim/mason/bin/omnisharp"
local pid = vim.fn.getpid()

return function(on_attach, capabilities)
	return {
		on_attach = on_attach,
		capabilities = capabilities,
		cmd = { omnisharp_bin, "--languageserver", "--hostPID", tostring(pid) },
	}
end
