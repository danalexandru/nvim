-- Remove search highlights after searching
vim.keymap.set("n", "<leader>h", "<cmd>nohlsearch<cr>", { desc = "Remove search highlights" })

-- Better window navigation
vim.keymap.set("n", "<C-h>", ":wincmd h<cr>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", ":wincmd l<cr>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "3j3<C-e>", { desc = "Scroll 3 lines down" })
vim.keymap.set("n", "<C-k>", "3k3<C-y>", { desc = "Scroll 3 lines down" })

vim.keymap.set("n", "<leader>t", ":tabnew<cr>", { desc = "Create new tab" })
vim.keymap.set("n", "<leader>w", ":bd<cr>", { desc = "Close current buffer" })

vim.keymap.set("n", "˙", ":tabprevious<cr>", { desc = "Go to previous tab" })
vim.keymap.set("n", "¬", ":tabnext<cr>", { desc = "Go to next tab" })
vim.keymap.set("n", "∆", ":tabm -1<cr>", { desc = "Move tab to the left" })
vim.keymap.set("n", "˚", ":tabm +1<cr>", { desc = "Move tab to the right" })


-- Easily split windows
vim.keymap.set("n", "<C-\\>", ":vsplit<cr>", { desc = "Window Split Vertical" })
vim.keymap.set("n", "<C-_>", ":split<cr>", { desc = "Window Split Horizontal" })

-- Exit out of vim easier
vim.keymap.set("n", "q", ":q<cr>", { desc = "Exit out of vim with one keypress" })

