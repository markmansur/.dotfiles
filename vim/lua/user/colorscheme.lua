local theme = 'tokyonight'

if theme == 'gruvbox' then
  local status_ok, gruvbox= pcall(require, "gruvbox")
  if not status_ok then
	  return
  end
  
  contrast = "soft" -- "hard" | "soft" | ""

  gruvbox.setup({
    terminal_colors = true,
    contrast = contrast,
    transparent_mode = true,
    overrides = {
      NvimTreeFolderIcon = {
        link = 'GruvBoxOrange'
      },
      NvimTreeEndOfBuffer = {
        link = 'GruvBoxBg0'
      },
      SignColumn = {
        link = 'GruvBoxBg0'
      }
    }
  })

  vim.cmd('colorscheme gruvbox')
end

if theme == 'tokyonight' then
  local status_ok, tokyonight = pcall(require, "tokyonight")
  if not status_ok then
	  return
  end

  tokyonight.setup({})

  vim.cmd('colorscheme tokyonight')
end


