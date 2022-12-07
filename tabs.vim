
if has("gui_running")
" Show tab number (useful for Cmd-1, Cmd-2.. mapping)
" For some reason this doesn't work as a regular set command,
" (the numbers don't show up) so I made it a VimEnter event
  autocmd VimEnter * set guitablabel=%N:\ %t\ %M
end

" Press Ctrl-Tab to switch between open tabs (like browser tabs) to 
" the right side. Ctrl-Shift-Tab goes the other way.
noremap <C-S> :tabnext<CR>
noremap <C-A> :tabprevious<CR>

  " Switch to specific tab numbers with Command-number
noremap <A-1> :tabnew 1<CR>
noremap <A-2> :tabnew 2<CR>
noremap <A-3> :tabnew 3<CR>
noremap <A-4> :tabnew 4<CR>
noremap <A-5> :tabnew 5<CR>
noremap <A-6> :tabnew 6<CR>
noremap <A-7> :tabnew 7<CR>
noremap <A-8> :tabnew 8<CR>
noremap <A-9> :tabnew 9<CR>
" Command-0 goes to the last tab

