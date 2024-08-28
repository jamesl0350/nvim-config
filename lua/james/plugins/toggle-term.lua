return {
  "akinsho/toggleterm.nvim",
  config = function()
    local toggleterm = require("toggleterm")

    toggleterm.setup({
      size = 20,
      open_mapping = [[<c-/>]],
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      insert_mappings = true,
      persist_size = true,
      direction = "float",
      close_on_exit = true,
      shell = vim.o.shell,
      float_opts = {
        border = "curved",
        winblend = 0,
        highlights = {
          border = "Normal",
          background = "Normal",
        },
      },
    })

    -- Function to run the current Python file
    local function run_python_file()
      local file_path = vim.fn.expand("%:p")
      local cmd = string.format("python3 %s", vim.fn.shellescape(file_path))

      -- Open a new terminal and run the Python file
      toggleterm.exec(cmd)
    end

    -- Set up a command to run the Python file
    vim.api.nvim_create_user_command("RunPython", run_python_file, {})

    -- Optional: Set up a keybinding to run the Python file
    vim.keymap.set("n", "<leader>rp", run_python_file, { noremap = true, silent = true, desc = "Run Python file" })
  end,
}
