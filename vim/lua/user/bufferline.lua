require("bufferline").setup{
    options = {
        show_buffer_close_icons = false,
        sort_by= 'insert_at_end',
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
          local s = " "
            for e, n in pairs(diagnostics_dict) do
            local sym = e == "error" and " "
              or (e == "warning" and " " or " " )
            s = s .. n .. sym
          end
          return s
          end,
        indicator = {
            icon = '⏽'
          },
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
