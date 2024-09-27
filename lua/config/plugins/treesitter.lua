local treesitter = function ()
  require("nvim-treesitter.configs").setup({
    ensure_installed = {
      "c",
      "lua",
      "vim",
      "vimdoc",
      "query",
      "markdown",
      "markdown_inline",
      "javascript",
      "typescript",
      "tsx",
      "astro"
    },
  })
end

return {
  "nvim-treesitter/nvim-treesitter",
  config = treesitter
}
