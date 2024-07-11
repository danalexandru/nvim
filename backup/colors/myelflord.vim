" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:   NeuroSys, based on elflord by Ron Aaron <ron@ronware.org>

" Available terminal colors:
" - Black
" - DarkBlue
" - DarkGreen
" - DarkCyan
" - DarkRed
" - DarkMagenta
" - Brown, DarkYellow
" - LightGray, LightGrey, Gray, Grey
" - DarkGray, DarkGrey
" - Blue, LightBlue
" - Green, LightGreen
" - Cyan, LightCyan
" - Red, LightRed
" - Magenta, LightMagenta
" - Yellow, LightYellow
" - White


set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "myelflord"
"hi nonText     ctermfg=black     ctermbg=black
hi Normal      ctermfg=lightcyan ctermbg=none         guifg=cyan    guibg=black
hi Comment     term=bold         ctermfg=DarkCyan                    guifg=#80a0ff
hi Constant    term=underline    ctermfg=Yellow                     guifg=#98fc03
hi Special     term=bold         ctermfg=DarkMagenta                 guifg=Red
hi Identifier  term=underline    cterm=bold            ctermfg=Cyan  guifg=#40ffff
hi Statement   term=bold         ctermfg=Yellow        gui=bold      guifg=#aa4444
hi PreProc     term=underline    ctermfg=LightMagenta                guifg=#ff80ff
hi Type        term=underline    ctermfg=LightGreen                  guifg=#60ff60 gui=bold
hi Function    cterm=bold        ctermfg=LightMagenta                guifg=LightMagenta
hi FuncDef     cterm=bold        ctermfg=Green                       guifg=LightGreen
hi Repeat      cterm=bold        ctermfg=Yellow                      guifg=Yellow
hi Operator                      ctermfg=Red                         guifg=Red
hi Ignore                        ctermfg=black                       guifg=bg
hi Error       term=reverse      ctermbg=Red           ctermfg=White guibg=Red     guifg=White
hi Todo        term=standout     ctermbg=Yellow        ctermfg=Black guifg=Blue    guibg=Yellow

" Custom dynamic highlighting classes
hi 1match      term=standout     ctermbg=White         ctermfg=DarkBlue guifg=Blue    guibg=Yellow
hi 2match      term=standout     ctermbg=Blue          ctermfg=White    guifg=Blue    guibg=Yellow
hi 3match      term=standout     ctermbg=Green         ctermfg=Black    guifg=Blue    guibg=Yellow
hi 4match      term=standout     ctermbg=Red           ctermfg=White    guifg=Blue    guibg=Yellow
hi 5match      term=standout     ctermbg=Cyan          ctermfg=Brown    guifg=Blue    guibg=Yellow

" Common groups that link to default highlighting.
" You can specify other highlighting easily.
hi link String          Constant
hi link Character       Constant
hi link Number          Constant
hi link Boolean         Constant
hi link Float           Number
hi link Conditional     Repeat
hi link Label           Statement
hi link Keyword         Statement
hi link Exception       Statement
hi link Include         PreProc
hi link Define          PreProc
hi link Macro           PreProc
hi link PreCondit       PreProc
hi link StorageClass    Type
hi link Structure       Type
hi link Typedef         Type
hi link Tag             Special
hi link SpecialChar     Special
hi link Delimiter       Special
hi link SpecialComment  Special
hi link Debug           Special
