-- Run prettier on save for js or ts 
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = { "*.ts", "*.js", "*.tsx", "*.jsx", "*.json"},
  command = "PrettierAsync",
});
