" ==================================================================================================
" Statusline
" ==================================================================================================

" always show statusline
set laststatus=2

" set statusline contents
set statusline=
let &statusline = " %{winnr()} |"
let &statusline .= " %<%f"
let &statusline .= "%{&readonly ? '  ' : &modified ? '  ' : ''}"
let &statusline .= "%{HardTimeFlag()}"
let &statusline .= "%=%{&filetype == '' ? 'unknown' : &filetype} |"
let &statusline .= " %l\ |\ %c "

" linter status
function! SyntaxFlag()
  if has_key(g:plugs, 'ale')
    let l:res = ale#statusline#Status()
    if l:res ==# 'OK'
      return '  '
    else
      return '  '
    end
  else
    return ''
  endif
endfunction

" show if hardtime enabled
function! HardTimeFlag()
  if exists("b:hardtime_on") && b:hardtime_on == 1
    return ' '
  else
    return ''
  endif
endfunction
