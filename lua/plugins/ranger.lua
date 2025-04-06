return {
    -- Shortened Github Url
    "francoiscabrol/ranger.vim",
    vim.keymap.set("n", "<C-p>", ":Ranger<CR>:bd<CR>", { desc = "Open Ranger file manager" }),
}

-- return {
--   "kelly-lin/ranger.nvim",
--   config = function()
--     require("ranger-nvim").setup({ replace_netrw = true })
--     vim.api.nvim_set_keymap("n", "<C-p>", "", {
--       noremap = true,
--       callback = function()
--         require("ranger-nvim").open(true)
--       end,
--     })
--   end,
-- }
