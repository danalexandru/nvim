return {
    "nvim-tree/nvim-tree.lua",
    config = function()
        vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle [E]xplorer" })
        local icons = require("config.icons")
        require("nvim-tree").setup({
            hijack_netrw = true,
			auto_reload_on_write = true,
			sync_root_with_cwd = true,
			view = {
				relativenumber = true,
			},
        })
    end,
}
