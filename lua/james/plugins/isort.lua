return {
  -- https://github.com/fisadev/vim-isort
  "fisadev/vim-isort",
  ft = "python",
  config = function()
    vim.g.vim_isort_map = ""

    vim.api.nvim_create_autocmd({ "BufWritePre" }, {
      pattern = "*.py",
      callback = function()
        vim.cmd("Isort")
      end,
    })
  end,
}
