" Enable vim-instant-markdown plugin
Plugin 'suan/vim-instant-markdown'                  " Markdown previewer

" By default, vim-instant-markdown will update the display in realtime. If that taxes your system too much, you can specify
"let g:instant_markdown_slow = 1

" By default, vim-instant-markdown will automatically launch the preview window when you open a markdown file. If you want to manually control this behavior, you can specify
"let g:instant_markdown_autostart = 0

" By default, the server only listens on localhost. To make the server available to others in your network, edit your .vimrc and add
"let g:instant_markdown_open_to_the_world = 1

" By default, scripts are blocked. To allow scripts to run, edit your .vimrc and add
"let g:instant_markdown_allow_unsafe_content = 1

" By default, external resources such as images, stylesheets, frames and plugins are allowed. To block such content, edit your .vimrc and add
"let g:instant_markdown_allow_external_content = 0
