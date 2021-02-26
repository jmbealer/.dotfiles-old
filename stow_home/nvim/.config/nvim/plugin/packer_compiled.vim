" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/usr00/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/usr00/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/usr00/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/usr00/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/usr00/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["complete-common-words.vim"] = {
    loaded = true,
    path = "/home/usr00/.local/share/nvim/site/pack/packer/start/complete-common-words.vim"
  },
  ["completion-nvim"] = {
    loaded = true,
    path = "/home/usr00/.local/share/nvim/site/pack/packer/start/completion-nvim"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/home/usr00/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  firenvim = {
    loaded = true,
    path = "/home/usr00/.local/share/nvim/site/pack/packer/start/firenvim"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\n)\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\14spaceline\frequire\0" },
    loaded = true,
    path = "/home/usr00/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  kommentary = {
    loaded = true,
    path = "/home/usr00/.local/share/nvim/site/pack/packer/start/kommentary"
  },
  ["nvcode-color-schemes.vim"] = {
    loaded = true,
    path = "/home/usr00/.local/share/nvim/site/pack/packer/start/nvcode-color-schemes.vim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/home/usr00/.local/share/nvim/site/pack/packer/start/nvim-autopairs"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/usr00/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/usr00/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/usr00/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/usr00/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/usr00/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/usr00/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/usr00/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/usr00/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-auto-popmenu"] = {
    loaded = true,
    path = "/home/usr00/.local/share/nvim/site/pack/packer/start/vim-auto-popmenu"
  },
  ["vim-markdown"] = {
    loaded = true,
    path = "/home/usr00/.local/share/nvim/site/pack/packer/start/vim-markdown"
  },
  ["vim-which-key"] = {
    loaded = true,
    path = "/home/usr00/.local/share/nvim/site/pack/packer/start/vim-which-key"
  },
  vimwiki = {
    loaded = true,
    path = "/home/usr00/.local/share/nvim/site/pack/packer/start/vimwiki"
  }
}

-- Config for: galaxyline.nvim
try_loadstring("\27LJ\2\n)\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\14spaceline\frequire\0", "config", "galaxyline.nvim")
END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
