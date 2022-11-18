" Plugin specific
if srcery#helper#ShouldAbort()
  finish
endif


" Sneak: {{{

if exists('g:loaded_sneak_plugin')
  hi! link Sneak Search
  call srcery#helper#Highlight('SneakScope', s:none, s:hard_black)
  hi! link SneakLabel Search
endif

" }}}
" Rainbow Parentheses: {{{

if !exists('g:rbpt_colorpairs')
  let g:rbpt_colorpairs =
    \ [
      \ ['blue',  '#2C78BF'], ['202',  '#FF5F00'],
      \ ['red',  '#EF2F27'], ['magenta', '#E02C6D']
    \ ]
endif

let g:rainbow_guifgs = [ '#E02C6D', '#EF2F27', '#D75F00', '#2C78BF']
let g:rainbow_ctermfgs = [ 'magenta', 'red', '202', 'blue' ]

if !exists('g:rainbow_conf')
  let g:rainbow_conf = {}
endif
if !has_key(g:rainbow_conf, 'guifgs')
  let g:rainbow_conf['guifgs'] = g:rainbow_guifgs
endif
if !has_key(g:rainbow_conf, 'ctermfgs')
  let g:rainbow_conf['ctermfgs'] = g:rainbow_ctermfgs
endif

let g:niji_dark_colours = g:rbpt_colorpairs
let g:niji_light_colours = g:rbpt_colorpairs

"}}}
" GitGutter: {{{

if exists('g:loaded_gitgutter')
  hi! link GitGutterAdd SrceryGreen
  hi! link GitGutterChange SrceryYellow
  hi! link GitGutterDelete SrceryRed
  hi! link GitGutterChangeDelete SrceryYellow
endif

" }}}
" GitCommit: "{{{

hi! link gitcommitSelectedFile SrceryGreen
hi! link gitcommitDiscardedFile SrceryRed

" }}}

" Asynchronous Lint Engine: {{{

if exists('g:ale_enabled')
  call srcery#helper#Highlight('ALEError', s:none, s:none, s:undercurl, s:red)
  call srcery#helper#Highlight('ALEWarning', s:none, s:none, s:undercurl, s:yellow)
  call srcery#helper#Highlight('ALEInfo', s:none, s:none, s:undercurl, s:blue)

  hi! link ALEErrorSign SrceryRed
  hi! link ALEWarningSign SrceryYellow
  hi! link ALEInfoSign SrceryBlue
endif

" }}}

" vim-indent-guides: {{{
if exists('g:loaded_indent_guides')
  call srcery#helper#Highlight('IndentGuidesEven', s:none, s:xgray3)
  call srcery#helper#Highlight('IndentGuidesOdd',  s:none, s:xgray4)
endif

" }}}

" vim-startify {{{
if exists('g:loaded_startify')
  hi! link StartifyNumber Statement
  hi! link StartifyFile Normal
  hi! link StartifyPath String
  hi! link StartifySlash Normal
  hi! link StartifyBracket Comment
  hi! link StartifyHeader Type
  hi! link StartifyFooter Normal
  hi! link StartifySpecial Comment
  hi! link StartifySection Identifier
endif

" }}}
" fzf: {{{

if exists('g:loaded_fzf')
  call srcery#helper#Highlight('fzf1', s:magenta, s:xgray2)
  call srcery#helper#Highlight('fzf2', s:bright_green, s:xgray2)
  call srcery#helper#Highlight('fzf3', s:bright_white, s:xgray2)
endif

"}}}
" Netrw: {{{

hi! link netrwDir SrceryBlue
hi! link netrwClassify SrceryCyan
hi! link netrwLink SrceryBrightBlack
hi! link netrwSymLink SrceryCyan
hi! link netrwExe SrceryYellow
hi! link netrwComment SrceryBrightBlack
hi! link netrwList SrceryBrightBlue
hi! link netrwTreeBar SrceryBrightBlack
hi! link netrwHelpCmd SrceryCyan
hi! link netrwVersion SrceryGreen
hi! link netrwCmdSep SrceryBrightBlack

"}}}
" coc.nvim: {{{

if exists('g:did_coc_loaded')
  hi! link CocErrorSign SrceryRed
  hi! link CocWarningSign SrceryBrightOrange
  hi! link CocInfoSign SrceryYellow
  hi! link CocHintSign SrceryBlue
  hi! link CocErrorFloat SrceryRed
  hi! link CocWarningFloat SrceryOrange
  hi! link CocInfoFloat SrceryYellow
  hi! link CocHintFloat SrceryBlue
  hi! link CocDiagnosticsError SrceryRed
  hi! link CocDiagnosticsWarning SrceryOrange
  hi! link CocDiagnosticsInfo SrceryYellow
  hi! link CocDiagnosticsHint SrceryBlue

  hi! link CocSelectedText SrceryRed
  hi! link CocCodeLens SrceryWhite

  call srcery#helper#Highlight('CocErrorHighlight', s:none, s:none, s:undercurl, s:red)
  call srcery#helper#Highlight('CocWarningHighlight', s:none, s:none, s:undercurl, s:bright_orange)
  call srcery#helper#Highlight('CocInfoHighlight', s:none, s:none, s:undercurl, s:yellow)
  call srcery#helper#Highlight('CocHintHighlight', s:none, s:none, s:undercurl, s:blue)
endif

" }}}
" CtrlP: "{{{

if exists('g:loaded_ctrlp')
  hi! link CtrlPMatch SrceryMagenta
  hi! link CtrlPLinePre SrceryBrightGreen
  call srcery#helper#Highlight('CtrlPMode1', s:bright_white, s:xgray3)
  call srcery#helper#Highlight('CtrlPMode2', s:bright_white, s:xgray5)
  call srcery#helper#Highlight('CtrlPStats', s:yellow, s:xgray2)
endif

" }}}
" NERDTree: "{{{

if exists('g:loaded_nerd_tree')
  hi! link NERDTreeDir SrceryBlue
  hi! link NERDTreeDirSlash SrceryCyan
  hi! link NERDTreeOpenable SrceryBlue
  hi! link NERDTreeClosable SrceryBlue
  hi! link NERDTreeFile SrceryWhite
  hi! link NERDTreeExecFile SrceryYellow
  hi! link NERDTreeUp SrceryOrange
  hi! link NERDTreeCWD SrceryGreen
  hi! link NERDTreeHelp SrceryCyan
  hi! link NERDTreeFlags SrceryCyan
  hi! link NERDTreeLinkFile SrceryBrightBlack
  hi! link NERDTreeLinkTarget SrceryBrightBlack
endif

" }}}
" Telescope: "{{{

if exists('g:loaded_telescope')
  call srcery#helper#Highlight('TelescopeNormal', s:white, s:none)
  call srcery#helper#Highlight('TelescopeSelection', s:green, s:none, s:bold)
  call srcery#helper#Highlight('TelescopeMatching', s:magenta)
  call srcery#helper#Highlight('TelescopeSelectionCaret', s:magenta)
  call srcery#helper#Highlight('TelescopePromptPrefix', s:bright_yellow)
endif

" }}}

if has('nvim')
  " nvim-treesitter {{{
  if exists('g:loaded_nvim_treesitter')
    if has('nvim-0.8')
    else
      call srcery#helper#Highlight('TSStrong', s:none, s:none, s:bold)
      call srcery#helper#Highlight('TSEmphasis', s:none, s:none, s:bold)
      call srcery#helper#Highlight('TSUnderline', s:none, s:none, s:underline)

      highlight! link TSWarning SrceryOrangeBold
      highlight! link TSDanger SrceryRedBold
      highlight! link TSConstBuiltin SrceryCyan
      highlight! link TSField SrceryGreen
      highlight! link TSFuncBuiltin SrceryYellow
      highlight! link TSFuncMacro SrceryOrange
      highlight! link TSFunction SrceryYellow
      call srcery#helper#Highlight('TSNamespace', s:white, s:none, s:italic)
      call srcery#helper#Highlight('TSParameter', s:cyan, s:none, s:italic)
      highlight! link TSProperty SrceryBrightBlue
      highlight! link TSSymbol SrceryBlue
      highlight! link TSTag SrceryBlue
      highlight! link TSTagAttribute SrceryYellow
      highlight! link TSVariableBuiltin SrceryCyan
      highlight! link TSType SrceryWhite
      highlight! link TSDelimiter SrceryWhite
      highlight! link TSURI SrceryGreen
      highlight! link TSVariable SrceryBrightWhite
    endif
  endif
  " }}}

  " Neovim's builtin LSP: {{{
  hi! link LspDiagnosticsDefaultError SrceryBrightRed
  hi! link LspDiagnosticsDefaultWarning SrceryBrightYellow
  hi! link LspDiagnosticsDefaultInformation SrceryBrightGreen
  hi! link LspDiagnosticsDefaultHint SrceryBrightCyan
  hi! link LspDiagnosticsDefaultUnderlineError SrceryBrightRedUnderline
  hi! link LspDiagnosticsDefaultUnderlineWarning SrceryBrightYellowUnderline
  hi! link LspDiagnosticsDefaultUnderlineInformation SrceryBrightGreenUnderline
  hi! link LspDiagnosticsDefaultUnderlineHint SrceryBrightCyanUnderline
  " }}}
endif
