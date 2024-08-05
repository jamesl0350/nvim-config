return {
  "Pocco81/auto-save.nvim",
  config = function()
    require("auto-save").setup({
      -- your config goes here
      enabled = true,
      vim.api.nvim_set_keymap("n", "<leader>n", ":ASToggle<CR>", { desc = "toggle autosave" }),
      -- or just leave it empty :)
    })
  end,
}
