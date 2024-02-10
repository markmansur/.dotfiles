local options = {
    number = true,
    relativenumber = true,
    tabstop = 2,
    softtabstop = 2,
    shiftwidth = 2,
    expandtab = true,
    scrolloff = 8,
    termguicolors = true,
    wrap = false,
    signcolumn = "yes",
    splitright = true,
    pumheight = 8,
    clipboard = 'unnamed'
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
