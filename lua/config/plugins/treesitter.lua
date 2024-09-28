local treesitter = function ()
  require("nvim-treesitter.configs").setup({
    ensure_installed = {
      "javascript",
      "typescript",
      "tsx",
      "astro",
      "css",
      "html"
    },

    highlight = {
      enable = true
    }
  })
end

return {
  "nvim-treesitter/nvim-treesitter",
  config = treesitter,
  ft = {"javascript", "typescript", "typescriptreact", "astro", "javascriptreact", "html", "css"}
}
