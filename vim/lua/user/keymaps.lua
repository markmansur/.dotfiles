local opts = { noremap = true, silent = true }

-- shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--  normal_mode = "n"
--  insert_mode = "i"
--  visual_mode = "v"
--  visual_block_mode = "x"
--  term_mode = "t"
--  command_mode = "c"

-- Normal
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Nvimtree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Navigate buffers
keymap("n", "<S-h>", ":bnext<CR>", opts)
keymap("n", "<S-l>", ":bprevious<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)

-- Easier file saving
keymap("n", "<C-S>", ":update<CR>", opts)
keymap("i", "<C-S>", "<C-o>:update<CR>", opts)
