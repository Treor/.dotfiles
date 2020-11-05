" Call method on window enter
augroup WindowManagement
    autocmd!
    autocmd BufEnter,FocusGained,VimEnter,WinEnter * call treor#autocmds#Handle_Win_Enter()
augroup END

autocmd VimResized * execute "normal! \<c-w>="
