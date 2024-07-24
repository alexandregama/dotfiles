-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>wh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>we", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>wx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- curly braces with space in between
keymap.set("i", "J{", " {  }<Esc>hi", { desc = "Insert braces with spaces and place cursor in the middle" })

-- Define a key mapping for exiting insert mode and moving to the end of the line in insert mode using jl
keymap.set("i", "jl", "<Esc>A", { desc = "Exit insert mode and move to the end of the line in insert mode with jl" })

-- Define a key mapping for saving all buffers with <leader>a
keymap.set("n", "<leader>a", ":wa<CR>", { desc = "Save all buffers" })

-- Define a key mapping for saving all buffers and then quitting with <leader>q
keymap.set("n", "<leader>q", ":wa | qa<CR>", { desc = "Save all buffers and quit" })

-- Define a key mapping for exiting insert mode and opening a new line below with jo
keymap.set("i", "jo", "<Esc>o", { desc = "Exit insert mode, open new line below, and enter insert mode" })

-- Map Option+Delete to delete the previous word in insert mode
keymap.set("i", "<M-BS>", "<C-w>", { desc = "Delete the previous word" })

-- Define a key mapping for exiting insert mode and moving to the end of the line in insert mode using jl
keymap.set("i", "j;", "<Esc>A ", { desc = "Exit insert mode, move to the end of the line with a space in insert mode" })

-- Define a key mapping for exiting insert mode and moving to the end of the line in insert mode using jl
keymap.set("i", "ji", "<Esc>lli", { desc = "Exit insert mode and move to the end of the line in insert mode with jl" })

-- Import the theme switcher
local themeswitcher = require("gama.utils.themeswitcher")

-- Create a command to toggle themes
vim.api.nvim_create_user_command("ToggleTheme", themeswitcher.toggle_theme, {})

-- Create a keybinding to toggle themes
keymap.set("n", "<leader>tt", ":ToggleTheme<CR>", { desc = "Toggle between themes" })
