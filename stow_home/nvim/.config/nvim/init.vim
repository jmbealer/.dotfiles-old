lua require('init') -- lua/init.lua

source $HOME/.config/nvim/coc.vim

autocmd! FileType help :wincmd L | :vert resize 80

let g:dashboard_default_executive ='telescope'

  " fun! GetSnipsInCurrentScope()
    " let snips = {}
    " for scope in [bufnr('%')] + split(&ft, '\.') + ['_']
      " call extend(snips, get(s:snippets, scope, {}), 'keep')
      " call extend(snips, get(s:multi_snips, scope, {}), 'keep')
    " endfor
    " return snips
  " endf


" let g:markdown_enable_folding = 1
" let g:markdown_enable_mappings = 0
" let g:markdown_enable_spell_checking = 0
" let g:markdown_enable_conceal = 1
