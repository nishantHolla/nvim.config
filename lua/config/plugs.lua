-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Lazy

local plugin = function (name)
  return require("config.plugins." .. name)
end

require("lazy").setup({
  plugin("nightfox"),
  plugin("lualine"),
  plugin("ibl"),
  plugin("oil"),
  plugin("autopair"),
  plugin("treesitter"),
  plugin("autotag"),
  plugin("tmux"),
  plugin("cmp"),
  plugin("conform"),
  plugin("comment"),
})
