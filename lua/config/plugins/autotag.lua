local autotag = function ()
  require("nvim-ts-autotag").setup({})
end

return {
  "windwp/nvim-ts-autotag",
  config = autotag
}
