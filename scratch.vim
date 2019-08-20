let g:scratch_location="/tmp/"

func! OpenScratchFile()
  let file_name=substitute(system("cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 5 | head -n 1"), "\n", "", "")
  let extension=expand("%:e")
  execute join(["tabe ", substitute(g:scratch_location, "\/$", "", ""), "/scratch-", file_name, len(ext) == 0 ? "" : ".", ext], "")
endfunc
