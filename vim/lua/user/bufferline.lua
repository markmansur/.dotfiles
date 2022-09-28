require("bufferline").setup{
  options = {
    show_buffer_close_icons = false,
    sort_by= 'insert_at_end',
    offsets = {
      {
        filetype = "NvimTree",
        text = "",
        highlight = "Directory",
        separator = true
      }
    }
  }
}

