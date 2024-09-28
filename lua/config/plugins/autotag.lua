local autotag = function ()
  require("nvim-ts-autotag").setup({})
end

return {
  "windwp/nvim-ts-autotag",
  config = autotag,
  ft = {"html", "astro", "typescript", "typescriptreact", "javascript", "javascriptreact"}
}
