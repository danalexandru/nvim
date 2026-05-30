return {
    "nvim-treesitter/nvim-treesitter",
    dependencies = {
        -- ts-autotag utilizes treesitter to understand the code structure to automatically close tsx tags
        "windwp/nvim-ts-autotag"
    },
    branch = "main",
    -- when the plugin builds run the TSUpdate command to ensure all our servers are installed and updated
    build = ':TSUpdate',
    -- config = function()
    --     -- gain access to the treesitter config functions
    --     local ts_config = require("nvim-treesitter.configs")

    --     -- call the treesitter setup function with properties to configure our experience
    --     ts_config.setup({
    --         -- make sure we have vim, vimdoc, lua, java, javascript, typescript, html, css, json, tsx, markdown, markdown, inline markdown and gitignore highlighting servers
    --         ensure_installed = {"vim", "vimdoc", "lua", "java", "javascript", "typescript", "html", "css", "json", "yaml", "toml", "tsx", "markdown", "markdown_inline", "gitignore", "go", "bash"},
    --         -- make sure highlighting it anabled
    --         highlight = {enable = true},
    --         -- enable tsx auto closing tag creation
    --         autotag = {
    --             enable = true
    --         }
    --     })
    -- end
    config = function()
        -- 1. Initialize nvim-treesitter (This tells it where to store downloaded parsers)
        local ts = require("nvim-treesitter")
        ts.setup({
            install_dir = vim.fn.stdpath("data") .. "/site"
        })

        -- 2. Define your required languages using the new .install() method
        -- (This replaces the old 'ensure_installed' option)
        ts.install({
            "vim", "vimdoc", "lua", "java", "javascript", "typescript", 
            "html", "css", "json", "yaml", "toml", "tsx", "markdown", 
            "markdown_inline", "gitignore", "go", "bash"
        })

        -- 3. Turn on Highlighting Natively
        -- Neovim 0.12 provides the vim.treesitter.start() API directly. 
        -- We create a global autocommand to activate it whenever any file opens.
        vim.api.nvim_create_autocmd("FileType", {
            pattern = "*",
            callback = function()
                -- Protect against errors in files that don't have a valid parser
                pcall(vim.treesitter.start)
            end,
        })

        -- 4. Configure nvim-ts-autotag
        -- Since the old autotag = { enable = true } nested block is gone, 
        -- you call the autotag setup natively on its own module.
        require("nvim-ts-autotag").setup({})
    end
}
