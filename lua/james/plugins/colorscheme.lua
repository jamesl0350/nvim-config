-- return {
--   "folke/tokyonight.nvim",
--   {
--     "rose-pine/neovim",
--     opts = {
--       transparent = true,
--       styles = {
--         sidebars = "transparent",
--         floats = "transparent",
--       },
--     },
--     name = "rose-pine",
--     priority = 1000,
--     config = function()
--       vim.cmd("colorscheme rose-pine")
--     end,
--   },
-- }
-- return {
--   {
--     "sainnhe/sonokai",
--     priority = 1000,
--     config = function()
--       vim.g.sonokai_transparent_background = "1"
--       vim.g.sonokai_enable_italic = "1"
--       vim.g.sonokai_style = "andromeda"
--       vim.cmd.colorscheme("sonokai")
--     end,
--   },
-- }
--
return {
  "scottmckendry/cyberdream.nvim",
  lazy = false,
  priority = 1000,
  name = "cyberdream",
  trasparent = true,
  config = function()
    vim.cmd("colorscheme cyberdream")
  end,
}
