vim.g.mapleader = ' '
vim.b.mapleader = ' '
vim.g.maplocalleader = ','
vim.b.maplocalleader = ','
local opts = {noremap = true}
local opts1 = {noremap = true, silent = true}
-- movement
-- vimp.nnoremap('<leader>hw', function()
  -- print('hello')
  -- print('world')
-- end)
-- vimp.nnoremap('s', 'b')
-- vimp.bind('n', 's', 'b')
-- vimp.nnoremap('t', 'j')
-- vimp.nnoremap('n', 'k')
-- vimp.nnoremap('b', 'w')
vim.api.nvim_set_keymap('', 's', 'b', opts)
vim.api.nvim_set_keymap('', 't', 'j', opts)
vim.api.nvim_set_keymap('', 'n', 'k', opts)
vim.api.nvim_set_keymap('', 'b', 'w', opts)

vim.api.nvim_set_keymap('', 'S', 'B', opts)
vim.api.nvim_set_keymap('', 'T', '}', opts)
vim.api.nvim_set_keymap('', 'N', '{', opts)
vim.api.nvim_set_keymap('', 'B', 'W', opts)


vim.api.nvim_set_keymap('i', '<c-s>', '<left>', opts)
vim.api.nvim_set_keymap('i', '<c-t>', '<down>', opts)
vim.api.nvim_set_keymap('i', '<c-n>', '<up>', opts)
vim.api.nvim_set_keymap('i', '<c-b>', '<right>', opts)


vim.api.nvim_set_keymap('', 'w', 't', opts)
vim.api.nvim_set_keymap('', 'j', 'r', opts)
vim.api.nvim_set_keymap('', 'k', 's', opts)
-- vim.api.nvim_set_keymap('n', 'w', 's', opts)


vim.api.nvim_set_keymap('', 'W', 'T', opts)
vim.api.nvim_set_keymap('', 'J', 'R', opts)
vim.api.nvim_set_keymap('', 'K', 'S', opts)

-- leader
-- vim.api.nvim_set_keymap('n', '<leader>', ':<c-u>WhichKey "<Space>" <cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>', ':WhichKey "<Space>" <cr>', opts1)
-- vim.api.nvim_set_keymap('n', '<localleader>', ':<c-u>WhichKey "," <cr>', opts)
-- vim.api.nvim_set_keymap('n', '<s-cr>', ':VimwikiFollowLinks', opts)

vim.api.nvim_set_keymap('n', '<leader>wr', ':w! :so% <cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>r', ':so% <cr>', opts)

-- files
vim.api.nvim_set_keymap('n', '<leader>fw', ':write! <cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>fW', ':saveas <cr>', opts)
-- vim.api.nvim_set_keymap('n', '<leader>fr', ':source $MYVIMRC <cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>fr', ':source ~/.config/nvim/init.vim <cr>', opts)

-- quit
vim.api.nvim_set_keymap('n', '<leader>q', ':quit <cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>qq', ':quit! <cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>qa', ':qall <cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>qa', ':qall! <cr>', opts)

-- window
vim.api.nvim_set_keymap('n', '<leader>ws', '<c-w>h', opts)
vim.api.nvim_set_keymap('n', '<leader>wt', '<c-w>j', opts)
vim.api.nvim_set_keymap('n', '<leader>wn', '<c-w>k', opts)
vim.api.nvim_set_keymap('n', '<leader>wb', '<c-w>l', opts)
vim.api.nvim_set_keymap('n', '<leader>wS', '<c-w>H', opts)
vim.api.nvim_set_keymap('n', '<leader>wT', '<c-w>J', opts)
vim.api.nvim_set_keymap('n', '<leader>wN', '<c-w>K', opts)
vim.api.nvim_set_keymap('n', '<leader>wB', '<c-w>L', opts)

-- buffer
vim.api.nvim_set_keymap('n', '<leader>bs', ':bprevious <cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>bb', ':bnext <cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>bd', ':bdelete <cr>', opts)

-- jumps or tags
vim.api.nvim_set_keymap('n', '<leader>js', '<c-o>', opts)
vim.api.nvim_set_keymap('n', '<leader>jb', '<c-]>', opts)

-- folds
vim.api.nvim_set_keymap('n', '<a-n>', 'zk', opts)
vim.api.nvim_set_keymap('n', '<a-t>', 'zj', opts)
-- vim.api.nvim_set_keymap('n', 'a-s', 'zk', opts)
vim.api.nvim_set_keymap('n', '<leader>ps', ':PackerSync<cr>', opts)


    vim.api.nvim_set_keymap('n', '<leader>vs', '<Plug>:VimwikiVSplitLink<cr>', opts)
vim.api.nvim_set_keymap('n', '<leader>e', ':CocCommand explorer<cr>', opts)
vim.cmd('au FileType python map <buffer> <leader>pr :w<cr>:exec "!python3" shellescape(@%, 1)<cr>')
