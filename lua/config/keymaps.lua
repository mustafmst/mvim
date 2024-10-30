-- Set global keymaps here
local set = vim.keymap.set

set("n", "<leader>r", ":source ~/.config/nvim/init.lua<cr>", {desc = "reload config"})
set("n", "<leader>q", ":wqa<cr>", {desc = "Quit and save all"})
set("n", "<leader>Q", ":qa!<cr>", {desc = "Quit without save"})
