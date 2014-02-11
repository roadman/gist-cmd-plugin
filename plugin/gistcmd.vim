"=============================================================================
" Vim global plugin for gist command call
" File: gistcmd.vim
" Author: Seiji Ochiai <roadmang@gmail.com>
" WebPage: https://github.com/roadman/gist-cmd-plugin
" License: This file is placed in the public domain.
" script type: plugin

if exists("g:loaded_gist_cmd")
  finish
endif
let g:loaded_gist_cmd = 1

if !executable('gist')
  echohl ErrorMsg | echomsg "Gist-cmd: require 'gist' command" | echohl None
  finish
endif

command! GistUp :call gistcmd#upload_gist_file()

" vim:set et:
