lua require('init')
" lua/init.lua

source $HOME/.config/nvim/coc.vim

autocmd BufWritePost plugins.lua PackerCompile



syntax enable
" syntax on
set foldexpr=nvim_treesitter#foldexpr()

let g:AutoPairsFlyMode = 1

autocmd! BufEnter *.md set syntax=markdown.pandoc
" autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc

" autocmd BufEnter * ApcEnable
" enable this plugin for filetypes, '*' for all files.
" let g:apc_enable_ft = {'*'}

" source for dictionary, current or other loaded buffers, see ':help cpt'
set cpt+=.,k,w,b
" set spell

" don't select the first item.
set completeopt=menu,menuone,noselect

" suppress annoy messages.
set shortmess+=c


" configure nvcode-color-schemes
let g:nvcode_termcolors=256

" colorscheme gruvbox


" checks if your terminal has 24-bit color support
" if (has("termguicolors"))
    " set termguicolors
    " hi LineNr ctermbg=NONE guibg=NONE
" endif

" autocmd BufEnter * lua require'completion'.on_attach()
"Use <Tab> and <S-Tab> to navigate through popup menu
" inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:dashboard_default_executive ='telescope'

nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
" NvimTreeOpen and NvimTreeClose are also available if you need them

set termguicolors " this variable must be enabled for colors to be applied properly

" a list of groups can be found at `:help nvim_tree_highlight`
highlight NvimTreeFolderIcon guibg=blue

  fun! GetSnipsInCurrentScope()
    let snips = {}
    for scope in [bufnr('%')] + split(&ft, '\.') + ['_']
      call extend(snips, get(s:snippets, scope, {}), 'keep')
      call extend(snips, get(s:multi_snips, scope, {}), 'keep')
    endfor
    return snips
  endf

let g:markdown_enable_folding = 1
let g:markdown_enable_mappings = 0
let g:markdown_enable_spell_checking = 0
let g:markdown_enable_conceal = 1


autocmd! FileType help :wincmd L | :vert resize 80
autocmd VimResized * wincmd =
