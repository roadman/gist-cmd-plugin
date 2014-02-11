
let s:save_cpo = &cpo
set cpo&vim

let g:save_gist_url = ""

function! gistcmd#upload_gist_file()
  let a:file = expand("%")
  let a:gist_cmd = "gist ".a:file

  if g:save_gist_url !=# ""
    let a:gist_cmd = a:gist_cmd." -u ".g:save_gist_url
  endif

  echo a:gist_cmd
  let g:save_gist_url = system(a:gist_cmd)
  echo g:save_gist_url
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo

" vim:set et:
