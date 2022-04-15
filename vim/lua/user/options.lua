local options = {
	number = true,
	relativenumber = true,
	tabstop = 4,
	softtabstop = 4,
	shiftwidth = 4,
	scrolloff = 8
}

for k, v in pairs(options) do
	vim.opt[k] = v
end
