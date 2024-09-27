local set = vim.keymap.set
local opt = function (desc, silent, noremap)
  if silent == nil then silent = true end
  if noremap == nil then noremap = true end

  return {silent = silent, noremap = noremap, desc = desc}
end

local oil = function ()
  require("oil").setup({
    columns = {},
    delete_to_trash = true,
    skip_confirm_for_simple_edits = true,
    watch_for_changes = true,
    keymaps = {
      ["<M-l>"] = "actions.select",
      ["<M-v>"] = { "actions.select", opts = { vertical = true }},
      ["<M-h>"] = { "actions.select", opts = { horizontal = true }},
      ["<M-t>"] = { "actions.select", opts = { tab = true }},
      ["<M-p>"] = "actions.preview",
      ["<leader><leader>"] = "actions.close",
      ["<M-k>"] = "actions.parent",
      ["<M-j>"] = "actions.open_cwd",
      ["<M-z>"] = "actions.toggle_hidden",
    },
    float = {
      border = "none"
    }
  })

  set("n", "<leader><leader>", ":Oil --float<cr>", opt("Open oil"))
end

return {
  "stevearc/oil.nvim",
  config = oil
}
