return {
    -- Shortened Github Url
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("gruvbox").setup({
                overrides = {
                    SignColumn = {bg = "#282828"},
                    LineNr = {fg = "#fe8019"},
                    CursorLine = {bg = "#1d2021"},
                    CursorLineNr = {bg = "#1d2021"},
                },
            -- show the '~' characters after the end of buffers
            show_end_of_buffer = true, -- default false
            -- use transparent background
            transparent_bg = true, -- default false
            -- set italic comment
              italic = {
                strings = false,
                emphasis = false,
                comments = false,
                operators = false,
                folds = false,
                },
            -- overrides the default highlights with table see `:h synIDattr`             
        })
        -- Make sure to set the color scheme when neovim loads and configures the dracula plugin
        vim.cmd.colorscheme("gruvbox")
    end,
}
