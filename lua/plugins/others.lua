return {
    -- Shortened Github Url
    {"tpope/vim-commentary"},
    {
        "HiPhish/rainbow-delimiters.nvim",
        config = function()
            vim.g["rainbow_active"] = 1
        end
    },
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
    {
      "folke/todo-comments.nvim",
      dependencies = { "nvim-lua/plenary.nvim" },
      opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    },
}
