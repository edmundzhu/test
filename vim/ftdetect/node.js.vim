" vim-node.js - file type detect plugin for vim which detects node.js shebang
" Author:       Maciej Malecki
" Version:      1.1.0
" License:      MIT
"
" Install via pathogen by cloning/adding submodule in ~/.vim/bundle or
" by dropping this script in ~/vim/ftdetect

function! DetectNode()
  if !did_filetype()
    if getline(1) =~ '^#.*\<node\>'
      setfiletype javascript
    endif
  endif
endf

:au BufNewFile,BufRead * call DetectNode()
au BufNewFile,BufRead wscript setfiletype python
