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

keymap("n", "<esc>", "i", opts)
-- Normal
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Nvimtree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
keymap("n", "<leader>oe", ":NvimTreeFindFile<CR>", opts)

-- Navigate buffers
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-w>", ":bprevious | bd#<CR>", opts)
keymap("n", "<S-q>", ":q<CR>", opts)

-- Telescope
keymap("n", "<leader>f", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>f", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>r", ":Telescope lsp_references<CR>", opts)

-- Trouble
keymap("n", "<leader>tr", ":TroubleToggle<CR>", opts)
keymap("n", "<leader>tw", ":Trouble workspace_diagnostics<CR>", opts)
keymap("n", "<leader>td", ":Trouble document_diagnostics<CR>", opts)

-- Easier file saving
keymap("n", "<C-S>", ":update<CR>", opts)
keymap("i", "<C-S>", "<C-o>:update<CR>", opts)

-- GitSigns
keymap("n", "<leader>hs", ":Gitsigns stage_hunk<CR>", opts);
keymap("n", "<leader>hr", ":Gitsigns reset_hunk<CR>", opts);
keymap("n", "<leader>hp", ":Gitsigns preview_hunk<CR>", opts);
keymap("n", "<leader>hS", ":Gitsigns stage_buffer<CR>", opts);
keymap("n", "<leader>hR", ":Gitsigns reset_buffer<CR>", opts);

-- Splits
keymap("n", "<leader>v", ":vsplit<CR>", opts);
keymap("n", "<leader>h", ":split<CR>", opts)

