# vim-scratch-file

### Description
Open a file in a new tab with a random name in a specified location and with the same extension as the current file.


### How to use it
To be able to create scratch files in vim, just paste this little function inside your `vimrc` and map it to a keybinding of your choice.

```vim
let g:scratch_location="/tmp/"
func! OpenScratchFile()
  execute join(["tabe ", substitute(g:scratch_location, "\/$", "", ""), "/scratch-", substitute(system("cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 5 | head -n 1"), "\n", "", ""), len(expand("%:e")) == 0 ? "" : ".", expand("%:e")], "")
endfunc

```

Mapping example:

```vim
nnoremap <leader>s :call OpenScratchFile()<CR>
```

The function above will open a file in a new tab with a random name in the location specified by the `g:scratch_location` variable and with the same extension as the current file.

### Disclaimer
Given the method of generating random strings, this may only work on unix-based systems.

### Inspiration
Inspired by IntelliJ's scratch file feature.
