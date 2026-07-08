-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- jk tuşlarına hızlıca basınca Normal moda geç (Esc yerine geçer, çok pratiktir)
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode" })

-- Satırları Alt+j ve Alt+k ile aşağı yukarı taşı
vim.keymap.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move down" })
vim.keymap.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move up" })
