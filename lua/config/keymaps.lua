-- Remove search highlights after searching
vim.keymap.set("n", "<leader>h", "<cmd>nohlsearch<cr>", { desc = "Remove search highlights" })

-- Better window navigation
vim.keymap.set("n", "<C-h>", ":wincmd h<cr>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", ":wincmd l<cr>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "3j3<C-e>", { desc = "Scroll 3 lines down" })
vim.keymap.set("n", "<C-k>", "3k3<C-y>", { desc = "Scroll 3 lines down" })

vim.keymap.set("n", "<leader>t", ":tabnew<cr>", { desc = "Create new tab" })
vim.keymap.set("n", "<leader>w", ":bd<cr>", { desc = "Close current buffer" })

-- Mac keybindings
vim.keymap.set("n", "˙", ":tabprevious<cr>", { desc = "Go to previous tab" })
vim.keymap.set("n", "¬", ":tabnext<cr>", { desc = "Go to next tab" })
vim.keymap.set("n", "∆", ":tabm -1<cr>", { desc = "Move tab to the left" })
vim.keymap.set("n", "˚", ":tabm +1<cr>", { desc = "Move tab to the right" })

-- Linux keybindings
vim.keymap.set("n", "<A-h>", ":tabprevious<cr>", { desc = "Go to previous tab" })
vim.keymap.set("n", "<A-l>", ":tabnext<cr>", { desc = "Go to next tab" })
vim.keymap.set("n", "<A-j>", ":tabm -1<cr>", { desc = "Move tab to the left" })
vim.keymap.set("n", "<A-k>", ":tabm +1<cr>", { desc = "Move tab to the right" })

-- Easily split windows
vim.keymap.set("n", "<C-\\>", ":vsplit<cr>", { desc = "Window Split Vertical" })
vim.keymap.set("n", "<C-_>", ":split<cr>", { desc = "Window Split Horizontal" })

-- Exit out of vim easier
vim.keymap.set("n", "q", ":q<cr>", { desc = "Exit out of vim with one keypress" })
vim.keymap.set("n", "<leader>q", ":qa<cr>", { desc = "Exit out of vim with one keypress" })

-- Reload neovim configuration
vim.api.nvim_create_user_command('ReloadConfig', function()
  for name, _ in pairs(package.loaded) do
    if name:match('^user') or name:match('^plugins') then
      package.loaded[name] = nil
    end
  end
  dofile(vim.env.MYVIMRC)
  vim.notify("Configuration reloaded!", vim.log.levels.INFO)
end, {})
vim.api.nvim_set_keymap('n', '<leader>R', ':ReloadConfig<CR>', { noremap = true, silent = true })
