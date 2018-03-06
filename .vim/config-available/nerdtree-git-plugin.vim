" Enable nerdtree-git plugin
Plugin 'Xuyuanp/nerdtree-git-plugin.git'            " Shows git status flags in NERDTree

let g:NERDTreeIndicatorMapCustom = {
  \ "Modified"  : "✹",
  \ "Staged"  : "+",
  \ "Untracked" : "*",
  \ "Renamed"   : "->",
  \ "Unmerged"  : "=",
  \ "Deleted"   : "✖",
  \ "Dirty"   : "✗",
  \ "Clean"   : "✔︎",
  \ "Unknown"   : "?"
  \ }
