local options = {
    number = true,
    relativenumber = true,
    tabstop = 4,
    softtabstop = 4,
    shiftwidth = 4,
    expandtab = true,
    scrolloff = 8,
    termguicolors = true
    wrap = false
}

for k, v in pairs(options) do
    vim.opt[k] = v
end
