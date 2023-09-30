vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.termguicolors = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

vim.api.nvim_exec(
	[[
  augroup JenkinsfileFileType
    autocmd!
    autocmd BufNewFile,BufRead Jenkinsfile set filetype=groovy
  augroup END
]],
	true
)
