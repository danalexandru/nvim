return {
    "hiphish/rainbow-delimiters.nvim",
    config = function()
        require('rainbow-delimiters.setup').setup({
            strategy = {
                [''] = 'rainbow-delimiters.strategy.global',
                vim = 'rainbow-delimiters.strategy.local',
            },
            query = {
                [''] = 'rainbow-delimiters',
                lua = 'rainbow-blocks',
            },
            priority = {
                [''] = 110,
                lua = 210,
            },
            whitelist = {
                'lua',
                'go',
                'rust',
                'c',
                'cpp',
                'java',
                'python',
                'javascript',
                'typescript',
                'json',
                'jsonc',
                'toml',
                'yaml',
                'conf',
                'html',
                'css',
                'jquery',
                'sh',
            },
            highlight = {
                'RainbowDelimiterRed',
                'RainbowDelimiterYellow',
                'RainbowDelimiterBlue',
                'RainbowDelimiterOrange',
                'RainbowDelimiterGreen',
                'RainbowDelimiterViolet',
                'RainbowDelimiterCyan',
            },
            condition = function(bufnr)
                -- Safely verify if a Tree-sitter parser is actually available
                local has_parser, _ = pcall(vim.treesitter.get_parser, bufnr)
                return has_parser
            end,
        })
    end,
}
