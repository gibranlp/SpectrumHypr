local uv = vim.uv or vim.loop

local last_mtime = 0
local colors_path = vim.fn.stdpath("config") .. "/colors/matugen.lua"

local function reload_colorscheme()
  pcall(vim.cmd, "colorscheme matugen")
  vim.notify("Matugen colors reloaded!", vim.log.levels.INFO, { title = "Matugen" })
end

local function check_and_reload()
  local stat = uv.fs_stat(colors_path)
  if stat and stat.mtime and stat.mtime.sec ~= last_mtime then
    last_mtime = stat.mtime.sec
    reload_colorscheme()
  end
end

vim.api.nvim_create_autocmd({ "FocusGained", "VimResume" }, {
  callback = check_and_reload, -- callback is indeed a function
})
