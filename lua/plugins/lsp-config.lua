return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    }, {
         "williamboman/mason-lspconfig.nvim",
         config = function()
             require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "rust_analyzer", "gopls", "golangci_lint_ls", "pylsp" },
             })
         end
    }, --[[{
        "hrsh7th/cmp-nvim-lsp",
        config = function()
            -- require('cmp').setup({
            --   sources = {
            --     { name = 'nvim_lsp' }
            --   }
            -- })

            -- The nvim-cmp almost supports LSP's capabilities so You should advertise it to LSP servers..
            local capabilities = require('cmp_nvim_lsp').default_capabilities()
            --
            -- An example for configuring `clangd` LSP to use nvim-cmp as a completion engine
            require('lspconfig').clangd.setup {
              capabilities = capabilities,
            }
        end
    },]] {
        "neovim/nvim-lspconfig",
        dependencies = {
          "williamboman/mason.nvim",
          "williamboman/mason-lspconfig.nvim",
          -- "hrsh7th/cmp-nvim-lsp",
        },
        config = function()
            -- local capabilities = vim.lsp.protocol.make_client_capabilities()
            -- capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

            -- config
            local lspconfig = require('lspconfig')
            lspconfig.lua_ls.setup({})
            lspconfig.pylsp.setup({})
            -- lspconfig.pyright.setup({
            -- --     -- capabilities = capabilities,
            -- })
            lspconfig.gopls.setup({})
            lspconfig.golangci_lint_ls.setup({})
            lspconfig.rust_analyzer.setup({
              -- Server-specific settings. See `:help lspconfig-setup`
              settings = {
                ['rust-analyzer'] = {},
              },
            })

            -- show diagnostic messages at all time (default: false)
            vim.diagnostic.config({
              virtual_text = true, -- this turns on inline messages
              signs = true,        -- keeps the signs in the gutter
              underline = true,    -- underlines the problematic code
              update_in_insert = false, -- don't update diagnostics while you're typing
              severity_sort = true,
            })

            -- keybindings
            vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Get Hover description" })
            vim.keymap.set('n', 'J', vim.diagnostic.open_float, { noremap = true, silent = true })
            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { desc = "Go to declaration" })
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = "Go to definition" })
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { desc = "Get code actions" })
            vim.keymap.set('n', '<leader>r', ':LspRestart<CR>', { desc = "Restart LSP" })
        end
    }
}
