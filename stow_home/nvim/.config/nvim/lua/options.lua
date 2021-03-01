local vim = vim
-- setlocal spell spelllang=en_us
-- vim.o.
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.termguicolors = true


-- set t_Co=256 " enable 256 colors
vim.o.clipboard = 'unnamedplus'
-- set cmdheight=2 " more space for displaying messages
-- vim.o.updatetime=100
-- vim.o.updatetime=300
vim.o.updatetime=50
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.cmdheight = 2
-- set shortmess+=c

vim.wo.signcolumn='number'
-- vim.wo.numberwidth = 1

-- Shift & Indention Options
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.bo.softtabstop = 2
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.expandtab = true
vim.bo.expandtab = true


-- User Interface Options
vim.o.ruler = true
-- set wildmode=longest,list,full
vim.wo.list = true
-- vim.o.listchars = 'tab:┆·,trail:·,precedes:,extends:'
-- vim.o.listchars = 'eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣'
-- eol:↓,trail:●
vim.o.listchars = 'eol:↓,trail:●,tab:>·,extends:>,precedes:<,space:␣'
-- ·
vim.wo.cursorline = true
vim.wo.cursorcolumn = true
vim.wo.number = true
vim.wo.relativenumber = true
  -- vim.o.noerrorbells = true
vim.o.visualbell = true
vim.o.mouse = 'a' -- enable mouse
-- set title
vim.o.background = 'dark'
vim.o.showmatch = true --"highlight matching [{()}]"
-- "Search Options
-- vim.o.hlsearch -- "highlight matches
vim.o.ignorecase = true
-- set incsearch "search as characters are entered
vim.o.smartcase = true

-- ""Performance Options
-- set complete-=i
-- vim.o.completeopt = 'menu,noselect'
-- vim.o.completeopt = 'menuone,noinsert,noselect'
vim.o.completeopt = 'menu,menuone,noselect'
vim.o.lazyredraw = true

-- Text Rendering Options
-- set display+=lastline
vim.cmd('language en_US.utf-8')
-- set encoding=utf-8 " the encoding displayed
-- set fileencoding=utf-8 " the encoding written to file
-- " set linebreak
-- vim.o.scrolloff = 1
vim.o.scrolloff = 5
vim.o.sidescrolloff = 5
-- syntax enable "enable syntax processing
-- " syntax on " overwrites colortheme
-- " set wrap linebreak

-- "Code Folding Options
-- set foldmethod=indent "fold based on indent level
-- vim.wo.foldmethod = 'syntax' --"fold based on indent level
vim.wo.foldmethod = 'expr' --"fold based on indent level
-- vim.wo.foldexpr = 'nvim_treesitter#foldexpr()'
vim.wo.foldcolumn = 'auto'
-- vim.wo.foldcolumn = '1'
-- " set foldcolumn=1 "show folds in column"
-- " set foldnestmax=10 "10 nested fold max
-- set foldnestmax=1 "10 nested fold max
vim.o.foldlevelstart = 1
vim.o.foldclose = 'all' --"Close folds if you leave them in any way
vim.o.foldopen = 'all' --"Open folds if you touch them in any way
-- augroup rememeber_folds
  -- autocmd!
  -- autocmd BufWinLeave * silent! mkview
  -- autocmd BufWinEnter * silent! loadview
-- augroup END

-- "Miscellaneous Options
-- set backspace=indent,eol,start
vim.o.confirm = true
-- " set formatoptions+=w
-- " set formatoptions+=j
-- " set formatoptions-=cro " stop newline continution of comments
vim.o.hidden = true --" required to keep multiple buffers
-- set history=1000
-- set nomodeline
-- set noswapfile
-- set nrformats-=octal
-- set shell
-- set wildignore+=.pyc,.swp

-- " :set colorcolumn=80
vim.wo.colorcolumn = '+1'
-- vim.wo.colorcolumn = '80'
-- vim.bo.textwidth = 79
vim.cmd('set textwidth=79')
vim.o.wrapmargin = 1
-- set wrapmargin=2

vim.o.showmode = false
-- set noshowmode
-- " set noshowcmd
-- " set autochdir
-- " autocmd bufenter * lcd %:p:h
-- " Miscellaneous
vim.o.timeoutlen = 500 --" was 1000
vim.o.ttimeoutlen = 0
-- " set synmaxcol=128
-- " syntax sync minlines=256
vim.o.tildeop = true
vim.o.pumheight = 10 --" makes popup menu smaller
vim.wo.conceallevel = 3 --" conceal text
vim.o.scrolljump =-25

-- "Vertically Center document when entering Insert mode
-- " autocmd InsertEnter * norm zz

vim.wo.spell = true
-- vim.o.dictionary = '/usr/share/dict/words'

vim.bo.swapfile = false

vim.o.scrolloff = 999
vim.o.cpoptions = vim.o.cpoptions ..'n'
-- vim.bo.complete = '.,w,b,u,t,k'
-- vim.cmd('set spell')

vim.cmd('au! BufWritePost $MYVIMRC source %')
vim.cmd('autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o')

