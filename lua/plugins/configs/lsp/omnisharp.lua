local omnisharp_bin = "$HOME/.local/share/nvim/mason/bin/omnisharp"
local pid = vim.fn.getpid()

return {
	cmd = { omnisharp_bin, "--languageserver", "--hostPID", tostring(pid) },
}
