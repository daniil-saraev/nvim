-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/rippydeadwalker/.cache/nvim/packer_hererocks/2.1.1734355927/share/lua/5.1/?.lua;/Users/rippydeadwalker/.cache/nvim/packer_hererocks/2.1.1734355927/share/lua/5.1/?/init.lua;/Users/rippydeadwalker/.cache/nvim/packer_hererocks/2.1.1734355927/lib/luarocks/rocks-5.1/?.lua;/Users/rippydeadwalker/.cache/nvim/packer_hererocks/2.1.1734355927/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/rippydeadwalker/.cache/nvim/packer_hererocks/2.1.1734355927/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["actions-preview.nvim"] = {
    config = { "\27LJ\2\ny\0\0\a\0\b\0\v6\0\0\0009\0\1\0009\0\2\0005\2\3\0'\3\4\0006\4\5\0'\6\6\0B\4\2\0029\4\a\4B\0\4\1K\0\1\0\17code_actions\20actions-preview\frequire\14<leader>a\1\3\0\0\6v\6n\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/actions-preview.nvim",
    url = "https://github.com/aznhe21/actions-preview.nvim"
  },
  ["autoclose.nvim"] = {
    config = { "\27LJ\2\nª\1\0\0\6\0\t\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\a\0005\3\5\0005\4\3\0004\5\0\0=\5\4\4=\4\6\3=\3\b\2B\0\2\1K\0\1\0\tkeys\1\0\1\tkeys\0\6<\1\0\1\6<\0\23disabled_filetypes\1\0\4\nclose\2\tpair\a<>\23disabled_filetypes\0\vescape\1\nsetup\14autoclose\frequire\0" },
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/autoclose.nvim",
    url = "https://github.com/m4xshen/autoclose.nvim"
  },
  ["cheatsheet.nvim"] = {
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/cheatsheet.nvim",
    url = "https://github.com/sudormrfbin/cheatsheet.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  harpoon = {
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/ThePrimeagen/harpoon"
  },
  ["lazygit.nvim"] = {
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["lspkind.nvim"] = {
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/lspkind.nvim",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["move.nvim"] = {
    config = { "\27LJ\2\nÃ\1\0\0\4\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\2B\0\2\1K\0\1\0\tchar\1\0\1\venable\2\tword\1\0\1\venable\2\nblock\1\0\2\venable\2\vindent\2\tline\1\0\4\tline\0\tword\0\nblock\0\tchar\0\1\0\2\venable\2\vindent\2\nsetup\tmove\frequire\0" },
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/move.nvim",
    url = "https://github.com/fedepujol/move.nvim"
  },
  ["noice.nvim"] = {
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/noice.nvim",
    url = "https://github.com/folke/noice.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "https://github.com/MunifTanjim/nui.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["quick-scope"] = {
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/quick-scope",
    url = "https://github.com/unblevable/quick-scope"
  },
  ["refactoring.nvim"] = {
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/refactoring.nvim",
    url = "https://github.com/theprimeagen/refactoring.nvim"
  },
  ["telescope-file-browser.nvim"] = {
    config = { "\27LJ\2\nô\2\0\0\t\0\19\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0009\0\4\0006\1\0\0'\3\1\0B\1\2\0029\1\5\0015\3\17\0005\4\16\0005\5\a\0005\6\6\0=\6\b\0055\6\t\0004\a\0\0=\a\n\0065\a\f\0009\b\v\0=\b\r\a=\a\14\6=\6\15\5=\5\3\4=\4\2\3B\1\2\0016\1\0\0'\3\1\0B\1\2\0029\1\18\1'\3\3\0B\1\2\1K\0\1\0\19load_extension\1\0\1\15extensions\0\1\0\1\17file_browser\0\rmappings\6n\n<A-a>\1\0\1\n<A-a>\0\vcreate\6i\1\0\2\6i\0\6n\0\17display_stat\1\0\4\17hijack_netrw\2\rmappings\0\17display_stat\0\ntheme\bivy\1\0\3\tmode\1\tdate\2\tsize\1\nsetup\factions\17file_browser\15extensions\14telescope\frequire\0" },
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\nt\0\0\3\0\a\0\0156\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0)\1,\1=\1\3\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\15timeoutlen\ftimeout\6o\bvim\0" },
    loaded = true,
    path = "/Users/rippydeadwalker/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: telescope-file-browser.nvim
time([[Config for telescope-file-browser.nvim]], true)
try_loadstring("\27LJ\2\nô\2\0\0\t\0\19\0!6\0\0\0'\2\1\0B\0\2\0029\0\2\0009\0\3\0009\0\4\0006\1\0\0'\3\1\0B\1\2\0029\1\5\0015\3\17\0005\4\16\0005\5\a\0005\6\6\0=\6\b\0055\6\t\0004\a\0\0=\a\n\0065\a\f\0009\b\v\0=\b\r\a=\a\14\6=\6\15\5=\5\3\4=\4\2\3B\1\2\0016\1\0\0'\3\1\0B\1\2\0029\1\18\1'\3\3\0B\1\2\1K\0\1\0\19load_extension\1\0\1\15extensions\0\1\0\1\17file_browser\0\rmappings\6n\n<A-a>\1\0\1\n<A-a>\0\vcreate\6i\1\0\2\6i\0\6n\0\17display_stat\1\0\4\17hijack_netrw\2\rmappings\0\17display_stat\0\ntheme\bivy\1\0\3\tmode\1\tdate\2\tsize\1\nsetup\factions\17file_browser\15extensions\14telescope\frequire\0", "config", "telescope-file-browser.nvim")
time([[Config for telescope-file-browser.nvim]], false)
-- Config for: move.nvim
time([[Config for move.nvim]], true)
try_loadstring("\27LJ\2\nÃ\1\0\0\4\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\2B\0\2\1K\0\1\0\tchar\1\0\1\venable\2\tword\1\0\1\venable\2\nblock\1\0\2\venable\2\vindent\2\tline\1\0\4\tline\0\tword\0\nblock\0\tchar\0\1\0\2\venable\2\vindent\2\nsetup\tmove\frequire\0", "config", "move.nvim")
time([[Config for move.nvim]], false)
-- Config for: actions-preview.nvim
time([[Config for actions-preview.nvim]], true)
try_loadstring("\27LJ\2\ny\0\0\a\0\b\0\v6\0\0\0009\0\1\0009\0\2\0005\2\3\0'\3\4\0006\4\5\0'\6\6\0B\4\2\0029\4\a\4B\0\4\1K\0\1\0\17code_actions\20actions-preview\frequire\14<leader>a\1\3\0\0\6v\6n\bset\vkeymap\bvim\0", "config", "actions-preview.nvim")
time([[Config for actions-preview.nvim]], false)
-- Config for: autoclose.nvim
time([[Config for autoclose.nvim]], true)
try_loadstring("\27LJ\2\nª\1\0\0\6\0\t\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\a\0005\3\5\0005\4\3\0004\5\0\0=\5\4\4=\4\6\3=\3\b\2B\0\2\1K\0\1\0\tkeys\1\0\1\tkeys\0\6<\1\0\1\6<\0\23disabled_filetypes\1\0\4\nclose\2\tpair\a<>\23disabled_filetypes\0\vescape\1\nsetup\14autoclose\frequire\0", "config", "autoclose.nvim")
time([[Config for autoclose.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\nt\0\0\3\0\a\0\0156\0\0\0009\0\1\0+\1\2\0=\1\2\0006\0\0\0009\0\1\0)\1,\1=\1\3\0006\0\4\0'\2\5\0B\0\2\0029\0\6\0004\2\0\0B\0\2\1K\0\1\0\nsetup\14which-key\frequire\15timeoutlen\ftimeout\6o\bvim\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
