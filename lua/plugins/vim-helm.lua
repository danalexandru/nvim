return {
  "towolf/vim-helm",
  ft = { "yaml" },  -- or if you have a specific filetype for helm templates
  config = function()
    -- If there are any configuration options provided by the plugin,
    -- you can set them here. Otherwise, just loading it should suffice.
    -- For example, if you want to force helm syntax injection:
    vim.g.helm_template_highlighting = 1
  end,
}
