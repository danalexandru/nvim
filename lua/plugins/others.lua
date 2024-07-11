return {
    -- Shortened Github Url
    {"vim-airline/vim-airline"},
    {"vim-airline/vim-airline-themes"},
    {"tpope/vim-commentary"},
    {"HiPhish/rainbow-delimiters.nvim"},
    {"fatih/vim-go"},
    {"preservim/vim-markdown"},
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
    },
    {"hashivim/vim-terraform"},
    {"gko/vim-coloresque"},
    {
        "f-person/git-blame.nvim",
        vim.keymap.set("n", "<leader>s", ":GitBlameToggle<cr>", { desc = "Toggle Git blame" }),
    },
    {"lervag/vimtex"},
    {"dkarter/bullets.vim"},
}
