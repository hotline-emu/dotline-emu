" Enable vimux plugin
Plugin 'benmills/vimux'                             " Do tmux things from vim

" Open vim tmux runner
map <Leader>vo :call VimuxOpenRunner()<CR>

" Close vim tmux runner
map <Leader>vq :VimuxCloseRunner<CR>

" Run current buffer as a bash script
map <Leader>rb :call VimuxRunCommand("clear; ./" . bufname("%"))<CR>

" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>

" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>

" Inspect runner pane map
map <Leader>vi :VimuxInspectRunner<CR>

" Clear the tmux history of the runner pane
map <Leader>vc :VimuxClearRunnerHistory<CR>

" Zoom the tmux runner page
map <Leader>vz :VimuxZoomRunner<CR>

function! VimuxSlime()
  call VimuxSendText(@v)
  call VimuxSendKeys("Enter")
endfunction

" If text is selected, save it in the v buffer and send that buffer it to tmux
vmap <LocalLeader>vs "vy :call VimuxSlime()<CR>

" Select current paragraph and send it to tmux
nmap <LocalLeader>vs vip<LocalLeader>vs<CR>
