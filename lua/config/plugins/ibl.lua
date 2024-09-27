local ibl = function ()
  require("ibl").setup({
    indent = { char = "|" },
    scope = { enabled = false }
  })
end

return {
  "lukas-reineke/indent-blankline.nvim",
  config = ibl
}
