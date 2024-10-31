-- Set global keymaps here
local set = vim.keymap.set

set("n", "<leader>r", ":source ~/.config/nvim/init.lua<cr>", { desc = "reload config" })
set("n", "<leader>q", ":wqa<cr>", { desc = "Quit and save all" })
set("n", "<leader>Q", ":qa!<cr>", { desc = "Quit without save" })

-- Window movement
set("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
set("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
set("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
set("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })

-- Windows
set("n", "<leader>w", "<c-w>", { desc = "Windows" })
set("n", "<leader>-", "<C-W>s", { desc = "Split Window Below" })
set("n", "<leader>|", "<C-W>v", { desc = "Split Window Right" })
set("n", "<leader>wd", "<C-W>c", { desc = "Delete Window" })
