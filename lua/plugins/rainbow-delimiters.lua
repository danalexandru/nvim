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
                local ft = vim.bo[bufnr].filetype
                local bt = vim.bo[bufnr].buftype

                -- 1. Ignore terminal and non-file scratch windows entirely
                if bt == "terminal" or bt == "nofile" then
                  return false
                end

                -- 2. Drop out early if it's an empty string, an 'lf' shell, or a snacks layout
                if ft == "" 
                    or ft == "lf" 
                    or ft == "toggleterm" 
                    or ft == "conf" 
                    or ft == "gitcommit" 
                    or ft == "gitrebase" 
                    or ft:match("^snacks_") then
                  return false
                end

                -- Safely verify if a Tree-sitter parser is actually available
                local has_parser, _ = pcall(vim.treesitter.get_parser, bufnr)
                return has_parser
            end,
        })
    end,
}
