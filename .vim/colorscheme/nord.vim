if v:version > 704
  if &term =~ '256color'
    set t_ut=
  endif

  set termguicolors
  set t_Co=256
  set t_AB=^[[48;5;%dm
  set t_AF=^[[38;5;%dm]]]]

"  highlight Normal ctermbg=black ctermfg=white
endif

let g:nord_italic_comments = 1
let g:nord_uniform_status_lines = 1
let g:nord_comment_brightness = 10
let g:nord_uniform_diff_background = 1

colorscheme nord
execute 'source' '~/.vim/colorscheme/vim-airline.vim'
let g:airline_theme='nord'
