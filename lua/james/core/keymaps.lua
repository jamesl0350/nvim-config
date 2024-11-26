-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
--NOTE:General Keymaps -------------------

--NOTE:use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

--NOTE:clear search highlights
keymap.set("n", "<leader>h", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

--NOTE:increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

--NOTE: Navigate vim panes

keymap.set("n", "<C-k>", ":wincmd k<CR>")
keymap.set("n", "<C-j>", ":wincmd j<CR>")
keymap.set("n", "<C-l>", ":wincmd l<CR>")
keymap.set("n", "<C-h>", ":wincmd h<CR>")

--NOTE: Window Management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

--NOTE: Primeagen Keymaps

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
--
keymap.set("x", "<leader>p", '"_dP')

keymap.set("n", "<leader>y", '"+y')
keymap.set("v", "<leader>y", '"+y')
keymap.set("n", "<leader>Y", '"+Y')

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

--NOTE: Indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

--NOTE: Commenting
vim.api.nvim_set_keymap("n", "<leader>/", "gcc", { noremap = false, silent = true })
vim.api.nvim_set_keymap("v", "<leader>/", "gcc", { noremap = false, silent = true })

--NOTE: open current file in firefox
vim.keymap.set("n", "<leader>fx", '<cmd>!google-chrome "%"<cr>', { desc = "Open file in Firefox" })

--NOTE:black python formatting
vim.keymap.set("n", "<leader>fmd", vim.lsp.buf.format)

--NOTE:Open compiler
vim.api.nvim_set_keymap("n", "<leader>co", "<cmd>CompilerOpen<cr>", { noremap = true, silent = true })

--NOTE:Redo last selected option
vim.api.nvim_set_keymap(
  "n",
  "<leader>cr",
  "<cmd>CompilerStop<cr>" -- (Optional, to dispose all tasks before redo)
    .. "<cmd>CompilerRedo<cr>",
  { noremap = true, silent = true }
)

--NOTE:Toggle compiler results
vim.api.nvim_set_keymap("n", "<leader>ct", "<cmd>CompilerToggleResults<cr>", { noremap = true, silent = true })

--NOTE:hightlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) test",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
--NOTE: Fine command line
vim.api.nvim_set_keymap("n", ":", "<cmd>FineCmdline<CR>", { noremap = true })
