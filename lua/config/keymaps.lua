local set = vim.keymap.set
local opt = function (desc, silent, noremap)
  if silent == nil then silent = true end
  if noremap == nil then noremap = true end

  return {silent = silent, noremap = noremap, desc = desc}
end

vim.g.mapleader = ","

set("n", "<esc>", ":nohl<cr>", opt("Clear highlights"))

set({"i", "v"}, "<leader><leader>", "<esc>", opt("Go to normal mode"))

set("i", "<M-h>", "<left>", opt("Move left"))
set("i", "<M-j>", "<down>", opt("Move down"))
set("i", "<M-k>", "<up>", opt("Move up"))
set("i", "<M-l>", "<right>", opt("Move right"))

set({"n", "v"}, "d", "\"_d", opt("Delete without updating unnamed register"))
set({"n", "v"}, "c", "\"_c", opt("Change without updating unnamed register"))
set({"n", "v"}, "x", "\"_x", opt("Delete character without updating unnamed register"))

set({"n", "v"}, "<leader>d", "d", opt("Delete with updating unnamed register"))
set({"n", "v"}, "<leader>c", "c", opt("Change with updating unnamed register"))
set({"n", "v"}, "<leader>x", "x", opt("Delete character with updating unnamed register"))

set("n", "<M-i>", ":bp<cr>", opt("Go to previous buffer"))
set("n", "<M-o>", ":bn<cr>", opt("Go to next buffer"))

set("n", "<leader>ss", ":w<cr>", opt("Write current buffer"))
set("n", "<leader>sa", ":wa<cr>", opt("Write all open buffers"))
set("n", "<leader>qq", CloseBuffer, opt("Close current buffer"))
set("n", "<leader>qa", ":qa<cr>", opt("Close all open buffers"))
