local status_ok, gruvbox= pcall(require, "gruvbox")
if not status_ok then
	return
end

vim.o.background = "dark" -- 'dark' | 'light'
contrast = "hard" -- "hard" | "soft" | ""

palette = require("gruvbox/palette").get_base_colors(vim.o.background, contrast)

gruvbox.setup({
  contrast = contrast,
  transparent_mode = true,
  overrides = {
    NvimTreeFolderIcon = {
      fg = palette.orange
    },
    NvimTreeEndOfBuffer = {
      fg = palette.bg0
    },
    SignColumn = {
      bg = palette.bg0
    }
  }
})

vim.cmd('colorscheme gruvbox')
