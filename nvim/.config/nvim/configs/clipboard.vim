" Enable OSC52 clipboard support
set clipboard=unnamedplus
if exists('$TMUX')
  let g:clipboard = {
        \   'name': 'tmux-osc52',
        \   'copy': {
        \      '+': 'tmux load-buffer -w -',
        \      '*': 'tmux load-buffer -w -',
        \    },
        \   'paste': {
        \      '+': 'tmux save-buffer -',
        \      '*': 'tmux save-buffer -',
        \   },
        \ }
else
  let g:clipboard = {
        \   'name': 'osc52',
        \   'copy': {
        \      '+': {lines, regtype -> OSC52(join(lines, "\n"))},
        \      '*': {lines, regtype -> OSC52(join(lines, "\n"))},
        \    },
        \   'paste': {
        \      '+': {-> systemlist('pbpaste')},
        \      '*': {-> systemlist('pbpaste')},
        \   },
        \ }

  function! OSC52(str)
    let encoded = system('base64', a:str)
    let encoded = substitute(encoded, '\n$', '', '')
    let b64 = "\e]52;c;" . encoded . "\a"
    call writefile([b64], '/dev/tty', 'b')
  endfunction
endif
