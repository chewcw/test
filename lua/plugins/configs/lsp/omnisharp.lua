local omnisharp_bin = ""
local pid = vim.fn.getpid()

return {
	cmd = { omnisharp_bin, "--languageserver", "--hostPID", tostring(pid) },
}
