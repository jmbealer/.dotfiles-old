-- Only required if you have packer in your `opt` pack
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself as an optional plugin
use {'wbthomason/packer.nvim', opt = true}
 use {'tpope/vim-commentary'}
 use {'tpope/vim-surround'}
  use {'tpope/vim-repeat'}
  use {'tpope/vim-endwise'}
-- Completion
  use 'neoclide/coc.nvim'
  -- use {'nvim-lua/completion-nvim'}
  -- use {'ojroques/nvim-hardline'}
    -- require('hardline').setup {}
-- Statusline
  use {'glepnir/galaxyline.nvim',
    branch = 'main',
    -- your statusline
    -- config = function() require'spaceline' end,
    config = function() require'eviline' end,
    -- some optional icons
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }
 use {'jiangmiao/auto-pairs'}
  -- use {'windwp/nvim-autopairs'}
    -- require('nvim-autopairs').setup()
  use {'kyazdani42/nvim-tree.lua'}
  use {'liuchengxu/vim-which-key'}
  use {'glepnir/dashboard-nvim'}
-- Fuzzy Finder
  use {'nvim-telescope/telescope.nvim',
  requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }
-- Colors
  use {'norcalli/nvim-colorizer.lua'}
    require'colorizer'.setup()
-- Colorscheme
  use {'christianchiarulli/nvcode-color-schemes.vim'}
  -- use {'beauwilliams/focus.nvim'}
  -- place me somewhere in your init.lua
    -- local focus = require('focus')
    -- focus.width = 100
  use {'vimwiki/vimwiki'}
    vim.g.vimwiki_list = {{
      path = '~/wiki/',
      syntax = 'markdown',
      ext = '.md'}}
    vim.g.vimwiki_global_ext = 1
    -- vim.g.vimwiki_filetypes = {'markdown'}
    -- vim.g.vimwiki_filetypes = {'markdown', 'pandoc'}
    vim.g.vimwiki_folding = 'custom'
    -- vim.g.vimwiki_folding = 'expr'
  -- use 'konfekt/complete-common-words.vim'
  -- use 'skywind3000/vim-auto-popmenu'
  use 'plasticboy/vim-markdown'
  use 'mhinz/vim-signify'
-- Terminal integration
  use 'akinsho/nvim-toggleterm.lua'
    require"toggleterm".setup{
      size = 20,
      open_mapping = [[<c-t>]],
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = '<number>', -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
      start_in_insert = true,
      persist_size = true,
      direction = 'horizontal',
    }

  -- use 'p00f/nvim-ts-rainbow'
    -- require'nvim-treesitter.configs'.setup {
      -- rainbow = {
      -- enable = true
      -- }
    -- }

-- Tabline
  use 'akinsho/nvim-bufferline.lua'
  require'bufferline'.setup{
    options = {
      always_show_bufferline = false,
    }
  }

  -- use 'adelarsq/neovcs.vim'


  -- Simple plugins can be specified as strings
  -- use '9mm/vim-closer'

  -- Lazy loading:
  -- Load on specific commands
  -- use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

  -- Load on an autocommand event
  -- use {'andymass/vim-matchup', event = 'VimEnter *'}

  -- Load on a combination of conditions: specific filetypes or commands
  -- Also run code after load (see the "config" key)
  -- use {
    -- 'w0rp/ale',
    -- ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
    -- cmd = 'ALEEnable',
    -- config = 'vim.cmd[[ALEEnable]]'
  -- }

  -- Plugins can have dependencies on other plugins
  -- use {
    -- 'haorenW1025/completion-nvim',
    -- opt = true,
    -- requires = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}}
  -- }

  -- Plugins can also depend on rocks from luarocks.org:
  -- use {
    -- 'my/supercoolplugin',
    -- rocks = {'lpeg', {'lua-cjson', '2.1.0'}}
  -- }

  -- You can specify rocks in isolation
  -- use_rocks 'penlight'
  -- use_rocks {'lua-resty-http', 'lpeg'}

  -- Local plugins can be included
  -- use '~/projects/personal/hover.nvim'

  -- Plugins can have post-install/update hooks
  -- use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}

  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  require('treesitter')

  -- Post-install/update hook with call of vimscript function with argument
  use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }

  -- Use specific branch, dependency and run lua file after load
  -- use {
    -- 'glepnir/galaxyline.nvim', branch = 'main', config = function() require'statusline' end,
    -- requires = {'kyazdani42/nvim-web-devicons'}
  -- }

  -- Use dependency and run lua function after load
  -- use {
    -- 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    -- config = function() require('gitsigns').setup() end
  -- }

  -- You can specify multiple plugins in a single call
  -- use {'tjdevries/colorbuddy.vim', {'nvim-treesitter/nvim-treesitter', opt = true}}

  -- You can alias plugin names
  -- use {'dracula/vim', as = 'dracula'}
end)
