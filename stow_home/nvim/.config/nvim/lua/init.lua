local vim = vim
-- ~/.config/nvim/init.vim
require('options')
require('plugins')
require('keybinds')
require('tree-config')

-- vim.cmd([[colorscheme gruvbox]])
vim.cmd('colorscheme gruvbox')

-- vim.cmd('')
vim.cmd('autocmd BufWritePost plugins.lua PackerCompile')
vim.cmd('syntax enable')
vim.cmd('autocmd! BufEnter *.md set syntax=markdown.pandoc')
vim.cmd('autocmd! FileType help :wincmd L | :vert resize 80')
vim.cmd('autocmd! VimResized * wincmd =')
vim.cmd('nnoremap <C-n> :NvimTreeToggle<CR>')
-- nnoremap <leader>r :NvimTreeRefresh<CR>
-- nnoremap <leader>n :NvimTreeFindFile<CR>
-- NvimTreeOpen and NvimTreeClose are also available if you need them
