-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out,                            "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end

-- Put lazy into the runtimepath for neovim!
vim.opt.runtimepath:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.number = true -- show line numbers
vim.opt.mouse = "a" -- enable mouse support in all modes
vim.opt.showmode = false -- don't show mode since it's already in statusline
vim.opt.clipboard = "unnamedplus" -- sync clipboard between OS and Neovim
vim.opt.breakindent = true -- enable break indent
vim.opt.undofile = true -- save undo history
vim.opt.ignorecase = true -- case-insensitive searching UNLESS \C or capital in search
vim.opt.smartcase = true -- case-sensitive when uppercase letters are used
vim.opt.signcolumn = "yes" -- keep signcolumn on by default
vim.opt.updatetime = 250 -- decrease update time
vim.opt.timeoutlen = 300 -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.splitright = true -- configure how new splits should be opened
vim.opt.splitbelow = true -- configure how new splits should be opened
vim.opt.list = true -- sets how neovim will display certain whitespace characters in the editor
vim.opt.listchars = { tab = "  ", trail = "·", nbsp = "␣" } -- define which whitespace characters to show
vim.opt.inccommand = "split" -- preview substitutions live, as you type!
vim.opt.cursorline = true -- show which line your cursor is on
vim.opt.scrolloff = 10 -- minimal number of screen lines to keep above and below the cursor
vim.opt.tabstop = 4 -- number of spaces tabs count for
vim.opt.shiftwidth = 4 -- size of an indent
vim.opt.expandtab = true -- use spaces instead of tabs
vim.bo.softtabstop = 4 -- number of spaces that a tab counts for while performing editing operations
vim.opt.autoindent = true -- copy indent from current line when starting a new line
vim.opt.hlsearch = true -- highlight search results

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		{ "folke/tokyonight.nvim",  config = function() vim.cmd.colorscheme "tokyonight" end },
		{ import = "config.plugins" },
	},
	change_detection = {
		-- automatically check for config file changes and reload the ui
		enabled = false,
		notify = false, -- get a notification when changes are found
	},
})
