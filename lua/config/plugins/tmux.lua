local set = vim.keymap.set
local opt = function (desc, silent, noremap)
  if silent == nil then silent = true end
  if noremap == nil then noremap = true end

  return {silent = silent, noremap = noremap, desc = desc}
end

local tmux = function ()
  set("n", "<c-h>", ":TmuxNavigateLeft<cr>", opt("Tmux navigate left") )
  set("n", "<c-j>", ":TmuxNavigateDown<cr>", opt("Tmux navigate down") )
  set("n", "<c-k>", ":TmuxNavigateUp<cr>", opt("Tmux navigate up"))
  set("n", "<c-\\>", ":TmuxNavigatePrevious<cr>" )

  set("n", "<leader>tv", [[ :lua vim.fn.system("tmux split-window -h 'cd " .. vim.fn.expand('%:p:h') .. " && exec $SHELL'")<cr>]], opt("Tmux open vertical split"))
  set("n", "<leader>th", [[ :lua vim.fn.system("tmux split-window 'cd " .. vim.fn.expand('%:p:h') .. " && exec $SHELL'")<cr>]], opt("Tmux open vertical split"))
end

return {
  "christoomey/vim-tmux-navigator",
  config = tmux
}
