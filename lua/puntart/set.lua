vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.termguicolors = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.cursorline = true

-- Ignore case when searching with /
vim.o.ignorecase = true
vim.o.smartcase = true

vim.g.netrw_banner = 0

-- Trying to change the background color of the current line
vim.api.nvim_command("highlight Visual guifg=White guibg=LightBlue gui=none")

-- Jenkins file syntax
vim.api.nvim_exec(
	[[
  augroup JenkinsfileFileType
    autocmd!
    autocmd BufNewFile,BufRead Jenkinsfile set filetype=groovy
  augroup END
]],
	true
)

-- Highlight yanked text
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})
