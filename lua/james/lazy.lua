local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ { import = "james.plugins" }, { import = "james.plugins.lsp" } }, {
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
})
-- Python environment
local util = require("lspconfig/util")
local path = util.path
require("lspconfig").pyright.setup({
  on_attach = on_attach,
  capabilities = capabilities,
  before_init = function(_, config)
    default_venv_path = path.join(vim.env.HOME, "virtualenvs", "nvim-venv", "bin", "python")
    config.settings.python.pythonPath = default_venv_path
  end,
})
