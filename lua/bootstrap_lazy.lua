-- Find the path where lazy.nvim would be installed to
local sLazyPath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Check if the lazy.nvim plugin dir exists
if not vim.loop.fs_stat(sLazyPath) then
	-- Doesn't exist - git clone latest stable version
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		sLazyPath,
	})
end

-- Add the lazy.nvim to the runtime path
vim.opt.rtp:prepend(sLazyPath)
