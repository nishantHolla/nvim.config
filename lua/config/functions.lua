
CloseBuffer = function ()
  local lsOutput = vim.api.nvim_command_output("ls")
  local count  = select(2, lsOutput:gsub("\n", "\n"))

  if count == 0 then
    vim.cmd("q")
  else
    vim.cmd("bd")
  end
end
