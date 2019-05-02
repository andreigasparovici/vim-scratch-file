# vim-scratch-file

```vim
let g:scratch_location="/tmp/"
func! OpenScratchFile()
  execute join(["tabe ", substitute(g:scratch_location, "\/$", "", ""), "/scratch-", substitute(system("cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 5 | head -n 1"), "\n", "", ""), len(expand("%:e")) == 0 ? "" : ".", expand("%:e")], "")
endfunc

```
