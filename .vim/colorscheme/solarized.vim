" Number of colors the terminal supports.
if has('gui_running')
  let g:solarized_termcolors=256
else
  let g:solarized_termcolors=16
endif

" Make background transparent.
let g:solarized_termtrans=1

" ?
let g:solarized_degrade=0

" Allow bold text.
let g:solarized_bold=1

" Allow underlined text.
let g:solarized_underline=1

" Allow italicized text.
let g:solarized_italic=1

" Set the contrast.
let g:solarized_contrast="normal"

" Set the visibility.
let g:solarized_visibility="normal"

" Set the colorscheme to solarized.
colorscheme solarized
execute 'source' '~/.vim/colorscheme/vim-airline.vim'
let g:airline_theme='solarized'

" Set the background to a dark color.
set background=dark

if has('gui_running')
  " Set F5 to toggle dark/light background.
  call togglebg#map("<F5>")
endif
