return {
    -- Shortened Github Url
    "francoiscabrol/ranger.vim",
    vim.keymap.set("n", "<C-p>", ":Ranger<cr>", { desc = "Open Ranger file manager" }),
}
