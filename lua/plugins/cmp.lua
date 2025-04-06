return {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip"
    },
    event = "InsertEnter",
    opts = function()
        local cmp = require("cmp")
        return {
           completion = {
             autocomplete = false,  -- Disable automatic completion
           },
           mapping = {
             -- Manually trigger completion (Ctrl+Space)
             ['<C-Space>'] = cmp.mapping.complete(),

             -- Accept currently selected item
             ['<CR>'] = cmp.mapping.confirm({ select = true }),

             -- scroll throwgh options
            ["<Tab>"] = cmp.mapping.select_next_item(),
            ["<S-Tab>"] = cmp.mapping.select_prev_item(),

             -- You can also manually close it
             -- ['<C-e>'] = cmp.mapping.close(),
             ['<Esc>'] = cmp.mapping(function(fallback)
               if cmp.visible() then
                 cmp.close()
               else
                 fallback()
               end
             end, { 'i', 's' }),
           },
           sources = {
             { name = "nvim_lsp" },
             { name = "buffer" },
             { name = "path" },
           },
        }
    end,
}
