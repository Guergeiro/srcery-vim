" -----------------------------------------------------------------------------
" File: helper.vim
" Description: Srcery colorscheme helpers functions
" Authors: Daniel Berg <mail@roosta.sh>, Birger J. Nordolum  <contact+srcery@mindtooth.no>
" Last Modified: 2020-08-27
" -----------------------------------------------------------------------------

" Helper to get a source color defined in colorscheme
function! srcery#helper#GetColor(group, ...) abort
  " Arguments: group, what

  " optionally pass a 'what' argument, defaults to 'fg'
  if a:0 > 0
    let l:what = a:1
  else
    let l:what = 'fg'
  endif

  let l:gui_color = synIDattr(hlID(a:group), l:what, 'gui')
  let l:term_color = synIDattr(hlID(a:group), l:what, 'cterm')

  return [ l:gui_color, l:term_color ]
endfunction

" Extracted from dracula.vim
function! srcery#helper#ShouldAbort(...)
    if ! exists('g:colors_name') || g:colors_name !=# 'srcery'
        return 1
    elseif a:0 > 0 && (! exists('b:current_syntax') || index(a:000, b:current_syntax) == -1)
        return 1
    endif
    return 0
endfunction

" Highlighting Function: {{{
function! srcery#helper#Highlight(group, fg, ...)
  " Arguments: group, guifg, guibg, gui, guisp

  " foreground
  let l:fg = a:fg

  " background
  if a:0 >= 1
    let l:bg = a:1
  else
    let l:bg = s:none
  endif

  " emphasis
  if a:0 >= 2 && strlen(a:2)
    let l:emstr = a:2
  else
    let l:emstr = 'NONE,'
  endif

  " special fallback
  if a:0 >= 3
    if g:srcery_guisp_fallback !=# 'NONE'
      let fg = a:3
    endif

    " bg fallback mode should invert higlighting
    if g:srcery_guisp_fallback ==# 'bg'
      let emstr .= 'inverse,'
    endif
  endif

  let l:histring = [ 'hi', a:group,
        \ 'guifg=' . l:fg[0], 'ctermfg=' . l:fg[1],
        \ 'guibg=' . l:bg[0], 'ctermbg=' . l:bg[1],
        \ 'gui=' . l:emstr[:-2], 'cterm=' . l:emstr[:-2]
        \ ]

  " special
  if a:0 >= 3
    call add(l:histring, 'guisp=' . a:3[0])
  endif

  execute join(l:histring, ' ')
endfunction
