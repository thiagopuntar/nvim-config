vim.g.mapleader = " "

vim.keymap.set("n", "<leader>e", vim.cmd.Ex) -- open netrw / file explorer

-- Remove search highlight
vim.keymap.set("n", "<leader>h", ":noh<CR>")

vim.keymap.set("i", "<C-c>", "<Esc>")

-- Copy and paste to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p')
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y')

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
