"Enable nerdtree plugin
Plugin 'scrooloose/nerdtree.git'                    " File browser

"if has('gui_running')
  " Opens NERDTree by default.
  "autocmd VimEnter * NERDTree

  " Focuses document instead of NERDTree at startup.
  "autocmd VimEnter * wincmd p
"endif

" Shows NERDTree bookmarks by default.
let NERDTreeShowBookmarks=1
nmap <leader>to :NERDTree<cr>
nmap <leader>tc :NERDTreeClose<cr>
nmap <F2> :NERDTreeToggle<cr>
