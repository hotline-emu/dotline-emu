" Enable airline plugin
Plugin 'vim-airline/vim-airline'                    " Status line
Plugin 'vim-airline/vim-airline-themes'             " Themes for the airline status line

let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_crypt=1
let g:airline_detect_spell=1

let g:airline_inactive_collapse=1
let g:airline_powerline_fonts = 1
let g:airline_symbols_ascii = 0

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

let g:airline_skip_empty_sections = 1

function! GetColorScheme()
  try
    echo g:colors_name
  catch /^Vim:E121/
    echo "default
  endtry
endfunction

set laststatus=2
set noshowmode


" There is a pause when leaving insert mode:
" You need to set ttimeoutlen; 10 is a good number to start with.
" Many places say to edit timeoutlen, but that could conflict with other plugins.
set ttimeoutlen=10
