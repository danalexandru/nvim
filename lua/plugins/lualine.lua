return {
    {"nvim-tree/nvim-web-devicons"},
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', opt = true },
        config = function()
            local custom_gruvbox = require'lualine.themes.gruvbox'
            custom_gruvbox.normal.a = { bg = '#98971a', fg = '#282828'}
            custom_gruvbox.normal.b = { bg = '#1d2021', fg = '#ebdbb2'}
            custom_gruvbox.normal.c = { bg = '#32302f', fg = '#ebdbb2'}

            custom_gruvbox.insert.a = { bg = '#458588', fg = '#282828'}
            custom_gruvbox.insert.b = { bg = '#1d2021', fg = '#ebdbb2'}
            custom_gruvbox.insert.c = { bg = '#32302f', fg = '#ebdbb2'}

            custom_gruvbox.visual.a = { bg = '#fe8019', fg = '#282828'}
            custom_gruvbox.visual.b = { bg = '#1d2021', fg = '#ebdbb2'}
            custom_gruvbox.visual.c = { bg = '#32302f', fg = '#ebdbb2'}

            custom_gruvbox.command.a = { bg = '#8ec07c', fg = '#282828'}
            custom_gruvbox.command.b = { bg = '#1d2021', fg = '#ebdbb2'}
            custom_gruvbox.command.c = { bg = '#32302f', fg = '#ebdbb2'}

          require('lualine').setup {
            options = {
              theme = custom_gruvbox,
              section_separators = { left = '', right = '' },
              component_separators = { left = ')', right = '(' },
              -- section_separators = { left = '', right = '' },
              -- component_separators = { left = '', right = '' },
            },
            -- Additional customization can be done here
          }
        end
    },
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = "nvim-tree/nvim-web-devicons",
        config = function()
            require("bufferline").setup{
                options = {
                    diagnostics = {"nvim_lsp", "coc"},
                    -- separator_style = "thin", -- or "round", "thick", "thin"
                    mode = "tabs",  -- "tabs" mode will display Neovim’s tab pages only
                    diagnostics_indicator = function(count, level, diagnostics_dict, context)
                      local icon = level:match("error") and " " or " "
                      return " " .. icon .. count
                    end,
                }
            }
        end,
    },
}
