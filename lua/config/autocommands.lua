local UserGroup = vim.api.nvim_create_augroup("UserGroup", {clear = true})
local autocmd = vim.api.nvim_create_autocmd

autocmd("BufEnter", {
  pattern = "?*",
  command = "set formatoptions-=cro",
  group = UserGroup,
  desc = "Do not auto add comments"
})

autocmd("BufWinEnter", {
  pattern = "?*",
  command = "silent! loadview",
  group = UserGroup,
  desc = "Load file view on enter"
})

autocmd("BufWinLeave", {
  pattern = "?*",
  command = "silent! mkview",
  group = UserGroup,
  desc = "Save file view on exit"
})
