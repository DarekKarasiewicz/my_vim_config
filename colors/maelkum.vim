" strange.vim by Gustaf Sjoberg <gsjoberg@gmail.com>
" with changes added by Marek Mareck <marekjm@ozro.pw>
" https://jonasjacek.github.io/colors/  -- colours cheatsheet

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "maelkum"

if &t_Co != 256 && !has("gui_running")
    " Colorscheme for regular terminals

    " General
    hi Normal ctermfg=lightgray ctermbg=none
    hi NonText ctermfg=darkgray ctermbg=none
" hi SpecialKey ctermfg=lightgray ctermbg=none
" hi MatchParen ctermfg=lightgray ctermbg=none
    hi ErrorMsg ctermfg=red ctermbg=none cterm=bold term=bold
    hi Error ctermfg=red ctermbg=none cterm=bold term=bold
    hi LineNr ctermfg=white ctermbg=none term=bold cterm=bold
" hi Underlined ctermfg=lightgray ctermbg=none
" hi Todo ctermfg=lightgray ctermbg=none
    hi Visual ctermfg=cyan ctermbg=black

    " Dividers
    hi StatusLine ctermfg=black ctermbg=white term=none cterm=none
    hi StatusLineNC ctermfg=darkgray  ctermbg=white term=bold cterm=bold
    hi VertSplit ctermfg=white ctermbg=white
    hi ColorColumn ctermbg=red

    " Menus
    hi PmenuSel ctermbg=darkyellow ctermfg=black
    hi Pmenu ctermbg=black ctermfg=darkgray
    hi TabLineSel ctermbg=darkcyan ctermfg=black term=none cterm=none
    hi TabLine ctermbg=black ctermfg=lightgray term=none cterm=reverse
    hi TabLineFill cterm=reverse
" hi PmenuSbar ctermfg=lightgray ctermbg=none
" hi PmenuThumb ctermfg=lightgray ctermbg=none
" hi WildMenu ctermfg=lightgray ctermbg=none

" Syntax
    hi Statement ctermfg=darkgray ctermbg=none
    hi Comment ctermfg=darkgray ctermbg=none
    hi Constant ctermfg=darkcyan ctermbg=none
    hi Identifier ctermfg=cyan ctermbg=none
    hi Type ctermfg=lightred ctermbg=none
" hi PreProc ctermfg=lightgray ctermbg=none
" hi Number ctermfg=lightgray ctermbg=none
" hi Special ctermfg=lightgray ctermbg=none

else
    " 256 color and gui

    " General
    hi Normal ctermfg=255 guifg=#FFFFFF ctermbg=none guibg=#060606 cterm=none gui=none
    hi NonText ctermfg=244 guifg=#444444 cterm=bold gui=bold
    hi SpecialKey ctermfg=214 guifg=#FFA500
    hi MatchParen ctermfg=233 guifg=#222222 ctermbg=246 guibg=#999999 cterm=bold gui=bold
    hi ErrorMsg ctermfg=15 guifg=#FFFFFF ctermbg=9 guibg=#FF0000 cterm=none gui=none
    hi Error ctermfg=15 guifg=#FFFFFF ctermbg=9 guibg=#FF0000 cterm=none gui=none
    hi LineNr ctermbg=233 guibg=#151515 ctermfg=239 guifg=#3d464c cterm=none gui=none
    hi Underlined ctermfg=32 guifg=#0066CC cterm=underline gui=underline
    hi CursorLine ctermbg=236 cterm=none
    hi CursorColumn ctermbg=52 cterm=none
    hi Visual ctermfg=233 guifg=#333333 ctermbg=108 guibg=#C0FFC0
    hi VisualNOS ctermfg=0 guifg=#111111 ctermbg=243 guibg=#888888 cterm=none gui=none
    hi MatchParen cterm=bold ctermbg=255 ctermfg=002

    " Search
    hi IncSearch ctermfg=0 guifg=#000000 ctermbg=226 guibg=#FFD700 cterm=none gui=none
    hi Search ctermfg=0 guifg=#000000 ctermbg=151 guibg=#FFD700 cterm=none gui=none

    " Dividers
    hi StatusLine ctermbg=235 guibg=#222222 ctermfg=255 guifg=#FFFFFF cterm=bold gui=none
    hi StatusLineNC ctermbg=235 guibg=#222222 ctermfg=239 guifg=#555555 cterm=none gui=none
    hi VertSplit ctermfg=235 guifg=#222222 ctermbg=235 guibg=#222222 cterm=none gui=none
    hi ColorColumn ctermbg=233 guibg=#151515

    " Menus
    hi Pmenu ctermfg=250 guifg=#DDDDDD ctermbg=236 guibg=#444444
    hi PmenuSel ctermfg=255 guifg=#FFFFFF ctermbg=167 guibg=#FF6666
    hi PmenuSbar ctermbg=243 guibg=#888888
    hi PmenuThumb ctermbg=250 guibg=#EEEEEE
    hi WildMenu ctermfg=0 guifg=#000000 ctermbg=226 guibg=#FFD700 cterm=none gui=none

    " Comments
    hi Comment ctermfg=002
    " hi cCommentL ctermfg=82
    " hi javaScriptLineComment ctermfg=82
    hi cCommentL cterm=bold ctermfg=46
    hi javaScriptLineComment ctermfg=46
    hi vimLineComment ctermfg=46

    " Syntax
    hi Constant ctermfg=108 guifg=#818f71
    hi Identifier ctermfg=145 guifg=#bbbaab cterm=none
    hi PreProc ctermfg=145 guifg=#bbbaab
    " hi Statement ctermfg=35 guifg=#5d6065 cterm=none gui=none
    hi Statement ctermfg=143 guifg=#5d6065 cterm=none gui=none

    hi Number ctermfg=38 guifg=#97806e
    hi Delimiter ctermfg=240 guifg=#5d6065
    hi Special ctermfg=214 guifg=#FFA500
    hi Type ctermfg=246 guifg=#999999 cterm=none gui=none

    " Folds
    hi Folded ctermfg=222 guifg=#FBD485 ctermbg=none guibg=#1c1c1c cterm=none gui=none
    hi FoldColumn ctermfg=222 guifg=#00b900 ctermbg=none guibg=#000300 cterm=none gui=none

    " Line numbers
    hi LineNr ctermfg=246 guifg=#007900 ctermbg=none guibg=#000600 cterm=none gui=none


    " C++ specific
    " hi cppBoolean ctermfg=174 guifg=#97806e
    hi cppBoolean ctermfg=38 cterm=none
    hi cppStatement ctermfg=112 cterm=none
    hi cppCast ctermfg=160 cterm=none
    hi Todo ctermfg=14 ctermbg=none cterm=none
    hi cBlock ctermfg=174 cterm=none


    " Erlang specific
    hi erlangBracker ctermfg=002


    " Perl specific
    hi perlStatementInclude ctermfg=240


    " Markdown specific
    hi markdownH1 ctermfg=002 guifg=#777777
    hi markdownH2 ctermfg=002 guifg=#777777
    hi markdownH3 ctermfg=002 guifg=#777777
    hi markdownH4 ctermfg=002 guifg=#777777
    hi markdownH5 ctermfg=002 guifg=#777777
    hi markdownH6 ctermfg=002 guifg=#777777
    hi markdownCode ctermfg=404 guifg=#777777
    hi markdownItalic ctermfg=202 guifg=#777777
    hi markdownBold ctermfg=042 guifg=#777777
    hi markdownCodeDelimiter ctermfg=046
    hi markdownCode ctermfg=046


    " Ledger specific
    hi ledgerPositiveAmount ctermfg=46
    hi ledgerNegativeAmount ctermfg=160
endif
