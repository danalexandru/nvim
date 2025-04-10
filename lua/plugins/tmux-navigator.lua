return {
  "christoomey/vim-tmux-navigator",
  cmd = {
    "TmuxNavigateLeft",
    "TmuxNavigateRight",
  },
  keys = {
    { "<C-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
    { "<C-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
  },
  config = function()
    vim.g.tmux_navigator_no_mappings = 1
    -- vim.keymap.set("n", "<C-h>", "<cmd><C-U>TmuxNavigatorLeft<CR>", { desc = "Move focus to the left window" })
    -- vim.keymap.set("n", "<C-l>", "<cmd><C-U>TmuxNavigatorRight<CR>", { desc = "Move focus to the right window" })
    vim.keymap.set("n", "<C-j>", "3j3<C-e>", { desc = "Scroll 3 lines down" })
    vim.keymap.set("n", "<C-k>", "3k3<C-y>", { desc = "Scroll 3 lines down" })
  end
}
