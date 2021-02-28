local vim = vim

-- ~/.config/nvim/init.vim
require('options')
require('plugins')
require('keybinds')
-- require('tree-config')

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])


