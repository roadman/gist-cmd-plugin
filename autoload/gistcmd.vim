
let s:save_cpo = &cpo
set cpo&vim

let curfile = expand("%")

function! gistcmd#upload_gist_file(file)
  let result = system("gist ".a:file)
  echo result
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo

" vim:set et:
