" Change highlight group of active/inactive windows
function! treor#autocmds#Handle_Win_Enter()
  setlocal winhighlight=Normal:ActiveWindow,NormalNC:Unfocused
endfunction
