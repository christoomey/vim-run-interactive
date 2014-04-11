function! s:RunInInteractiveShell(command)
  let saved_shellcmdflag = &shellcmdflag
  set shellcmdflag+=il
  try
    execute '!'. a:command
  finally
    execute 'set shellcmdflag=' . saved_shellcmdflag
  endtry
endfunction

command! -nargs=1 RunInInteractiveShell call <sid>RunInInteractiveShell(<f-args>)
