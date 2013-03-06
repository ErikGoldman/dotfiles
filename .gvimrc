" An example for a gvimrc file.
" The commands in this are executed when the GUI is started.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2001 Sep 02
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.gvimrc
"	      for Amiga:  s:.gvimrc
"  for MS-DOS and Win32:  $VIM\_gvimrc
"	    for OpenVMS:  sys$login:.gvimrc

" Only do this for Vim version 5.0 and later.
if version >= 500

  " I like highlighting strings inside C comments
  let c_comment_strings=1

  " Switch on syntax highlighting if it wasn't on yet.
  if !exists("syntax_on")
    syntax on
  endif

  " don't confuse me with 'line breaks' where there aren't any
  set nowrap

  " Switch on search pattern highlighting.
  set hlsearch

  " Tab mappings:
  map <C-TAB> :tabnext<CR>
  map <C-S-TAB> :tabprev<CR>
  map! <C-TAB> <ESC>:tabnext<CR>
  map! <C-S-TAB> <ESC>:tabprev<CR>

  " Indentation mappings
  " vmap <unique> <TAB> >gv
  " vmap <unique> <S-TAB> <gv

  " For Win32 version, have "K" lookup the keyword in a help file
  "if has("win32")
  "  let winhelpfile='windows.hlp'
  "  map K :execute "!start winhlp32 -k <cword> " . winhelpfile <CR>
  "endif
endif
