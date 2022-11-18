if srcery#helper#ShouldAbort('shell')
  finish
endif
" shell script: {{{

call srcery#helper#Highlight('shParenError', s:bright_white, s:bright_red)
hi! link shCmdSubRegion SrceryWhite
hi! link shArithRegion SrceryWhite
hi! link shArithRegion SrceryWhite
hi! link shQuote SrceryWhite
hi! link shRedir SrceryMagenta
hi! link shOption SrceryBrightYellow
hi! link shCommandSub SrceryBrightRed

" }}}

