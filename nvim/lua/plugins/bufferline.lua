local status  , bufferline = pcall(require , "bufferline")
if not status then
  return
end

bufferline.setup{
  options = {
    mode = "tabs",
    separator_style = "thick",
    indicator = {
      icon = '▎', -- this should be omitted if indicator style is not 'icon'
      style = 'icon',
    },
    always_show_bufferline = false,
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        text_align = "center",
        separator = true
      }
    },
  }
}
