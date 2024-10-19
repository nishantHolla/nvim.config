local set = vim.keymap.set
local opt = function (desc, silent, noremap)
  if silent == nil then silent = true end
  if noremap == nil then noremap = true end

  return {silent = silent, noremap = noremap, desc = desc}
end

local conform = function ()
  require("conform").setup({
    formatters_by_ft = {
      javascript = { "prettierd", "prettier", stop_after_first = true },
      typescript = { "prettierd", "prettier", stop_after_first = true },
      javascriptreact = { "prettierd", "prettier", stop_after_first = true },
      typescriptreact = { "prettierd", "prettier", stop_after_first = true },
      astro = { "prettierd", "prettier", stop_after_first = true },
    },
  })

  set("n", "<leader>SS", ":lua require('conform').format()<cr>:w<cr>", opt("Format and save"))
end

return {
  "stevearc/conform.nvim",
  config = conform,
  ft = {"javascript", "typescript", "typescriptreact", "javascriptreact", "astro"}
}
