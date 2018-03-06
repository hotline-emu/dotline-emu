set background=dark

let g:gruvbox_contrast_dark='medium'

let g:gruvbox_color_column='dark0_hard'
let g:gruvbox_number_column='dark0_soft'
let g:gruvbox_sign_column='dark1'
let g:gruvbox_vert_split='dark1'

let g:gruvbox_invert_indent_guides=0
let g:gruvbox_invert_selection=1
let g:gruvbox_invert_signs=0
let g:gruvbox_invert_tabline=1

if v:version > 704
  let g:gruvbox_bold=1
  let g:gruvbox_italic=1
  let g:gruvbox_italicize_comments=1
  let g:gruvbox_italicize_strings=1
  let g:gruvbox_underline=1
  let g:gruvbox_undercurl=1

  if &term =~ '256color'
    let g:gruvbox_termcolors=256
    set termguicolors
    set t_ut=
    set t_Co=256
    set t_AB=^[[48;5;%dm
    set t_AF=^[[38;5;%dm]]]]
    highlight Normal ctermbg=black ctermfg=white
  else
    let g:gruvbox_termcolors=16
  endif
else
  let g:gruvbox_bold=1
  let g:gruvbox_italic=0
  let g:gruvbox_italicize_comments=0
  let g:gruvbox_italicize_strings=0
  let g:gruvbox_underline=1
  let g:gruvbox_undercurl=1

  if &term =~ '256color'
    let g:gruvbox_termcolors=256
    set t_ut=
    set t_Co=256
    highlight Normal ctermbg=black ctermfg=white
  else
    let g:gruvbox_termcolors=16
  endif
endif

colorscheme gruvbox
" execute 'source' '~/.vim/colorscheme/vim-airline.vim'
let g:airline_theme='gruvbox'
