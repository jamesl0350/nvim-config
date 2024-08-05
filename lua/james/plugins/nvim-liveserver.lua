return {
  {
    "barrett-ruth/live-server.nvim",
    build = "npm add -g live-server",
    cmd = { "LiveServerStart", "LiveServerStop" },
    config = true,
    keys = {
      { "<leader>bs", "<cmd>LiveServerStart<cr>", desc = "Start Live Server" },
      { "<leader>bx", "<cmd>LiveServerStop<cr>", desc = "Stop Live Server" },
    },
  },
}
