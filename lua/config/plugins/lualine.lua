local lualine = function ()
  require("lualine").setup({
    options = {
      icons_enabled = false,
      component_separators = { left = "", right = ""},
      section_separators = { left = "", right = ""},
    },
    sections = {
      lualine_a = {"mode"},
      lualine_b = {"branch", "diff", "diagnostics"},
      lualine_c = {"encoding", "fileformat", "filetype"},
      lualine_x = {{
        "buffers",
        buffers_color = {
          active = {fg = "#ff0000"},
        },
      }},
      lualine_y = {"progress"},
      lualine_z = {"location"}
    },
  })
end

return {
  "nvim-lualine/lualine.nvim",
  config = lualine
}
