" Taken from
" http://got-ravings.blogspot.com/2008/08/vim-pr0n-making-statuslines-that-own.html
set laststatus=2

"set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
function! FileSize()
  let bytes = getfsize(expand("%:p"))
  if bytes <= 0
    return ""
  endif
  if bytes < 1024
    return bytes
  else
    return (bytes / 1024) . "K"
  endif
endfunction


set statusline=\ %{FileSize()}\ 

" Tail of the filename
set statusline+=%t

" Help file flag
set statusline+=%h

" Modified flag
set statusline+=%m

" Read only flag
set statusline+=%r

" Left/right separator
set statusline+=%=

" File encoding
set statusline+=[%{strlen(&fenc)?&fenc:'none'},

" File format
set statusline+=%{&ff}]

" Filetype
set statusline+=%y\ 

" Cursor column
set statusline+=%c,

" Cursor line/total lines
set statusline+=%l/%L

" Percent through file
set statusline+=\ %p%%\ 
