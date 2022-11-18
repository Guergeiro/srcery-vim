if srcery#helper#ShouldAbort('html')
  finish
endif

let s:none           = ['NONE', 'NONE']

" Normal Colors
let s:black          = srcery#helper#GetColor('SrceryBlack')
let s:red            = srcery#helper#GetColor('SrceryRed')
let s:green          = srcery#helper#GetColor('SrceryGreen')
let s:yellow         = srcery#helper#GetColor('SrceryYellow')
let s:blue           = srcery#helper#GetColor('SrceryBlue')
let s:magenta        = srcery#helper#GetColor('SrceryMagenta')
let s:cyan           = srcery#helper#GetColor('SrceryCyan')
let s:white          = srcery#helper#GetColor('SrceryWhite')

" Bright Colors
let s:bright_black   = srcery#helper#GetColor('SrceryBrightBlack')
let s:bright_red     = srcery#helper#GetColor('SrceryBrightRed')
let s:bright_green   = srcery#helper#GetColor('SrceryBrightGreen')
let s:bright_yellow  = srcery#helper#GetColor('SrceryBrightYellow')
let s:bright_blue    = srcery#helper#GetColor('SrceryBrightBlue')
let s:bright_magenta = srcery#helper#GetColor('SrceryBrightMagenta')
let s:bright_cyan    = srcery#helper#GetColor('SrceryBrightCyan')
let s:bright_white   = srcery#helper#GetColor('SrceryBrightWhite')

" Extra Colors
let s:orange         = srcery#helper#GetColor('SrceryOrange')
let s:bright_orange  = srcery#helper#GetColor('SrceryBrightOrange')
let s:hard_black     = srcery#helper#GetColor('SrceryHardBlack')
let s:xgray1         = srcery#helper#GetColor('SrceryXgray1')
let s:xgray2         = srcery#helper#GetColor('SrceryXgray2')
let s:xgray3         = srcery#helper#GetColor('SrceryXgray3')
let s:xgray4         = srcery#helper#GetColor('SrceryXgray4')
let s:xgray5         = srcery#helper#GetColor('SrceryXgray5')
let s:xgray6         = srcery#helper#GetColor('SrceryXgray6')

" Html: {{{

hi! link htmlTag SrceryBlue
hi! link htmlEndTag SrceryBlue

hi! link htmlTagName SrceryBlue
hi! link htmlTag SrceryBrightBlack
hi! link htmlArg SrceryYellow

hi! link htmlScriptTag SrceryRed
hi! link htmlTagN SrceryBlue
hi! link htmlSpecialTagName SrceryBlue

hi! link htmlLink SrceryBrightWhiteUnderline

hi! link htmlSpecialChar SrceryYellow

if g:srcery_bg_passthrough == 1 && !has('gui_running')
  hi! link htmlBold SrceryBrightWhiteBold
  call srcery#helper#Highlight('htmlBoldUnderline', s:bright_white, s:none, s:bold . s:underline)
  call srcery#helper#Highlight('htmlBoldItalic', s:bright_white, s:none, s:bold . s:italic)
  call srcery#helper#Highlight('htmlBoldUnderlineItalic', s:bright_white, s:none, s:bold . s:underline . s:italic)
  call srcery#helper#Highlight('htmlUnderline', s:bright_white, s:none, s:underline)
  call srcery#helper#Highlight('htmlUnderlineItalic', s:bright_white, s:none, s:underline . s:italic)
  call srcery#helper#Highlight('htmlItalic', s:bright_white, s:none, s:italic)
else
  call srcery#helper#Highlight('htmlBold', s:bright_white, s:black, s:bold)
  call srcery#helper#Highlight('htmlBoldUnderline', s:bright_white, s:black, s:bold . s:underline)
  call srcery#helper#Highlight('htmlBoldItalic', s:bright_white, s:black, s:bold . s:italic)
  call srcery#helper#Highlight('htmlBoldUnderlineItalic', s:bright_white, s:black, s:bold . s:underline . s:italic)
  call srcery#helper#Highlight('htmlUnderline', s:bright_white, s:black, s:underline)
  call srcery#helper#Highlight('htmlUnderlineItalic', s:bright_white, s:black, s:underline . s:italic)
  call srcery#helper#Highlight('htmlItalic', s:bright_white, s:black, s:italic)
endif

" }}}
