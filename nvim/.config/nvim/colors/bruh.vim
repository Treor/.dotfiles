" lena.vim - Vim color scheme for 16-color terminals, heavily based on noctu
" elenapan @ github
" ------------------------------------------------------------------

" Scheme setup {{{
set background=dark
hi! clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name="bruh"


"let g:color0="#3d4C5F"
let g:color0="#2e2E2E"
let g:color1="#F48FB1"
let g:color2="#A1EFD3"
let g:color3="#F1FA8C"
let g:color4="#92B6F4"
let g:color5="#BD99FF"
let g:color6="#87DFEB"
let g:color7="#F8F8F2"
let g:color8="#56687E"
let g:color9="#EE4F84"
let g:color10="#53E2AE"
let g:color11="#F1FF52"
let g:color12="#6498EF"
let g:color13="#985EFF"
let g:color14="#24D1E7"
let g:color15="#E5E5E5"

"}}} c
" Vim UI {{{
"hi Focused             ctermbg=16
"hi Unfocused           ctermbg=0
hi Unfocused           ctermbg=0     guibg=#3D4C5F
hi Normal              ctermfg=7     guifg=#F8F8F2
hi Cursor              ctermfg=7     ctermbg=1     guifg=#F8F8F2     guibg=#F48FB1
hi CursorLine          ctermbg=0     cterm=NONE    guibg=#3D4C5F
hi MatchParen          ctermfg=7     ctermbg=NONE  cterm=underline gui=underline   guifg=#F8F8F2     guibg=NONE
hi Pmenu               ctermfg=15    ctermbg=0     guifg=#E5E5E5     guibg=#3D4C5F
hi PmenuThumb          ctermbg=7     guibg=#F8F8F2
hi PmenuSBar           ctermbg=8     guibg=#56687E
hi PmenuSel            ctermfg=0     ctermbg=4     guifg=#3D4C5F     guibg=#92B6F4
hi ColorColumn         ctermbg=0     guibg=#3D4C5F
hi SpellBad            ctermfg=1     ctermbg=NONE  cterm=underline gui=underline   guifg=#F48FB1     guibg=NONE
hi SpellCap            ctermfg=12    ctermbg=NONE  cterm=underline gui=underline   guifg=#6498EF     guibg=NONE
hi SpellRare           ctermfg=11    ctermbg=NONE  cterm=underline gui=underline   guifg=#F1FF52     guibg=NONE
hi SpellLocal          ctermfg=13    ctermbg=NONE  cterm=underline gui=underline   guifg=#985EFF     guibg=NONE
hi NonText             ctermfg=8     guifg=#EE4F84
hi LineNr              ctermfg=8     ctermbg=NONE  cterm=bold gui=bold        guifg=#56687E     guibg=NONE
hi CursorLineNr        ctermfg=14    ctermbg=NONE  cterm=bold gui=bold        guifg=#24D1E7     guibg=NONE
hi Visual              ctermfg=0     ctermbg=5     guifg=#3D4C5F     guibg=#BD99FF
hi IncSearch           ctermfg=0     ctermbg=13    cterm=NONE        guifg=#3D4C5F     guibg=#985EFF
hi Search              ctermfg=0     ctermbg=14    guifg=#3D4C5F     guibg=#24D1E7
hi StatusLine          ctermfg=5     ctermbg=0     cterm=NONE        guifg=#BD99FF     guibg=#3D4C5F
hi StatusLineNC        ctermfg=8     ctermbg=0     cterm=bold gui=bold        guifg=#56687E     guibg=#3D4C5F
hi VertSplit           ctermfg=8     ctermbg=8     cterm=NONE        guifg=#56687E     guibg=#56687E
hi TabLine             ctermfg=8     ctermbg=0     cterm=NONE        guifg=#56687E     guibg=#3D4C5F
hi TabLineSel          ctermfg=7     ctermbg=0     guifg=#F8F8F2     guibg=#3D4C5F
hi Folded              ctermfg=4     ctermbg=0     cterm=bold,italic gui=bold,italic guifg=#92B6F4     guibg=#3D4C5F
hi Conceal             ctermfg=6     ctermbg=NONE  guifg=#87DFEB     guibg=NONE
hi Directory           ctermfg=10    ctermbg=NONE  cterm=NONE        guifg=#53E2AE     guibg=NONE
hi Title               ctermfg=13    ctermbg=NONE  cterm=bold gui=bold        guifg=#985EFF     guibg=NONE
hi ErrorMsg            ctermfg=9     ctermbg=NONE  cterm=bold gui=bold        guifg=#EE4F84     guibg=NONE
hi DiffAdd             ctermfg=0     ctermbg=2     guifg=#3D4C5F     guibg=#A1EFD3
hi DiffChange          ctermfg=0     ctermbg=3     guifg=#4D4C5F     guibg=#F1FA8C
hi DiffDelete          ctermfg=0     ctermbg=1     guifg=#3D4C5F     guibg=#F48FB1
hi DiffText            ctermfg=0     ctermbg=11    cterm=bold gui=bold        guifg=#3D4C5F     guibg=#F1FF52
hi User1               ctermfg=1     ctermbg=0     guifg=#F48FB1     guibg=#3D4C5F
hi User2               ctermfg=2     ctermbg=0     guifg=#A1EFD3     guibg=#3D4C5F
hi User3               ctermfg=4     ctermbg=0     guifg=#92B6F4     guibg=#3D4C5F
hi User4               ctermfg=3     ctermbg=0     guifg=#F1FA8C     guibg=#3D4C5F
hi User5               ctermfg=5     ctermbg=0     guifg=#BD99FF     guibg=#3D4C5F
hi User6               ctermfg=6     ctermbg=0     guifg=#87DFEB     guibg=#3D4C5F
hi User7               ctermfg=7     ctermbg=0     guifg=#F8F8F2     guibg=#3D4C5F
hi User8               ctermfg=8     ctermbg=0     guifg=#56687E     guibg=#3D4C5F
hi User9               ctermfg=15    ctermbg=5     guifg=#E5E5E5     guibg=#BD99FF
hi! link CursorColumn  CursorLine
hi! link SignColumn    LineNr
hi! link WildMenu      Visual
hi! link FoldColumn    SignColumn
hi! link WarningMsg    ErrorMsg
hi! link MoreMsg       Title
hi! link Question      MoreMsg
hi! link ModeMsg       MoreMsg
hi! link TabLineFill   StatusLineNC
hi! link SpecialKey    NonText

"}}}
" Generic syntax {{{
hi Delimiter       ctermfg=7   guifg=#F8F8F2
hi Comment         ctermfg=8   cterm=italic gui=italic     guifg=#56687E
hi Underlined      ctermfg=2   cterm=underline gui=underline  guifg=#A1EFD3
hi Type            ctermfg=2   guifg=#A1EFD3
hi String          ctermfg=1   cterm=bold gui=bold       guifg=#F48FB1
hi Keyword         ctermfg=4   guifg=#92B6F4
hi Todo            ctermfg=11  ctermbg=NONE     cterm=bold,underline     guifg=#F1FF52     guibg=NONE
hi Urgent          ctermfg=1   ctermbg=NONE     cterm=bold,underline     guifg=#F48FB1     guibg=NONE
hi Done            ctermfg=4   ctermbg=NONE     cterm=bold,underline     guifg=#92B6F4     guibg=NONE
hi Function        ctermfg=2   guifg=#A1EFD3
hi Identifier      ctermfg=7   cterm=NONE       guifg=#F8F8F2
hi Statement       ctermfg=4   cterm=bold gui=bold       guifg=#92B6F4
hi Constant        ctermfg=13  guifg=#985EFF
hi Number          ctermfg=10  guifg=#53E2AE
hi Boolean         ctermfg=2   guifg=#A1EFD3
hi Special         ctermfg=13  guifg=#985EFF
hi Ignore          ctermfg=0   guifg=#3D4C5F
hi PreProc         ctermfg=5   cterm=bold gui=bold       guifg=#BD99FF
hi Operator        ctermfg=5   cterm=bold gui=bold       guifg=#BD99FF
" hi! link Operator  Delimiter
hi! link Error     ErrorMsg

"}}}
" HTML {{{
hi htmlTagName              ctermfg=4             guifg=#92B6F4
hi htmlTag                  ctermfg=4             guifg=#92B6F4
hi htmlArg                  ctermfg=12            guifg=#6498EF
hi htmlH1                   cterm=bold
hi htmlBold                 cterm=bold
hi htmlItalic               cterm=underline
hi htmlUnderline            cterm=underline
hi htmlBoldItalic           cterm=bold,underline
hi htmlBoldUnderline        cterm=bold,underline
hi htmlUnderlineItalic      cterm=underline
hi htmlBoldUnderlineItalic  cterm=bold,underline
hi! link htmlLink           Underlined
hi! link htmlEndTag         htmlTag

"}}}
" XML {{{
hi xmlTagName               ctermfg=2             guifg=#A1EFD3
hi xmlTag                   ctermfg=10            guifg=#53E2AE
hi! link xmlString          xmlTagName
hi! link xmlAttrib          xmlTag
hi! link xmlEndTag          xmlTag
hi! link xmlEqual           xmlTag

"}}}
" JavaScript {{{
hi! link javaScript        Normal
hi! link javaScriptBraces  Delimiter

"}}}
" PHP {{{
hi phpSpecialFunction    ctermfg=5          guifg=#BD99FF
hi phpIdentifier         ctermfg=11         guifg=#F1FF52
hi phpParent             ctermfg=8          guifg=#56687E
hi! link phpVarSelector  phpIdentifier
hi! link phpHereDoc      String
hi! link phpDefine       Statement

"}}}
" Markdown {{{
hi markdownHeadingRule          ctermfg=3   guifg=#F1FA8C
hi! link markdownHeadingDelimiter   markdownHeadingRule
hi! link markdownLinkDelimiter      Delimiter
hi! link markdownURLDelimiter       Delimiter
hi! link markdownCodeDelimiter      NonText
hi markdownLinkDelimiter    ctermfg=15 ctermbg=NONE cterm=NONE guifg=#E5E5E5 guibg=NONE
hi! link markdownLinkTextDelimiter  markdownLinkDelimiter
hi markdownLinkText         ctermfg=2 ctermbg=NONE cterm=bold,underline guifg=#A1EFD3 guibg=NONE
hi! link markdownUrl                markdownLinkText
hi! link markdownUrlTitleDelimiter  markdownLinkText
hi! link markdownAutomaticLink      markdownLinkText
hi! link markdownIdDeclaration      markdownLinkText
hi markdownCode                     ctermfg=4 ctermbg=NONE cterm=NONE guifg=#93B6F4 guibg=NONE
hi! link markdownCodeBlock          String
hi! link markdownCodeBlock markdownCode
hi! link markdownCodeDelimiter markdownCode
hi markdownBold                     ctermfg=5 ctermbg=NONE cterm=bold gui=bold guifg=#BD99FF guibg=NONE
hi markdownItalic                   ctermfg=5 ctermbg=NONE cterm=italic gui=italic guifg=#BD99FF guibg=NONE
hi markdownBlockquote               ctermfg=15 ctermbg=NONE cterm=italic,bold gui=italic,bold guifg=#E5E5E5 guibg=NONE
hi markdownRule                     ctermfg=15 ctermbg=NONE cterm=italic,bold gui=italic,bold guifg=#E5E5E5 guibg=NONE

hi markdownH1 ctermfg=3 ctermbg=NONE cterm=bold gui=bold guifg=#F1FA8C guibg=NONE
hi markdownH2 ctermfg=3 ctermbg=NONE cterm=bold gui=bold guifg=#F1FA8C guibg=NONE
hi markdownH3 ctermfg=2 ctermbg=NONE cterm=bold gui=bold guifg=#A1EFD3 guibg=NONE
hi markdownH4 ctermfg=2 ctermbg=NONE cterm=bold gui=bold guifg=#A1EFD3 guibg=NONE
hi markdownH5 ctermfg=2 ctermbg=NONE cterm=NONE guifg=#A1EFD3 guibg=NONE
hi markdownH6 ctermfg=2 ctermbg=NONE cterm=NONE guifg=#A1EFD3 guibg=NONE

hi markdownListMarker ctermfg=6 ctermbg=NONE cterm=bold gui=bold guifg=#87DFEB guibg=NONE
hi markdownOrderedListMarker ctermfg=3 ctermbg=NONE cterm=bold gui=bold guifg=#F1FA8C guibg=NONE

"}}}
" Ruby {{{
hi! link rubyDefine                 Statement
hi! link rubyLocalVariableOrMethod  Identifier
hi! link rubyConstant               Constant
hi! link rubyInstanceVariable       Number
hi! link rubyStringDelimiter        rubyString

"}}}
" Git {{{
hi gitCommitBranch               ctermfg=3  guifg=#F1FA8C
hi gitCommitSelectedType         ctermfg=12 guifg=#6498EF
hi gitCommitSelectedFile         ctermfg=4  guifg=#92B6F4
hi gitCommitUnmergedType         ctermfg=9  guifg=#EE4F84
hi gitCommitUnmergedFile         ctermfg=1  guifg=#F48FB1
hi! link gitCommitFile           Directory
hi! link gitCommitUntrackedFile  gitCommitUnmergedFile
hi! link gitCommitDiscardedType  gitCommitUnmergedType
hi! link gitCommitDiscardedFile  gitCommitUnmergedFile

"}}}
" Vim {{{
hi! link vimSetSep    Delimiter
hi! link vimContinue  Delimiter
hi! link vimHiAttrib  Constant

"}}}
" LESS {{{
hi lessVariable             ctermfg=11
hi! link lessVariableValue  Normal

"}}}
" NERDTree {{{
hi! link NERDTreeHelp      Comment
hi! link NERDTreeExecFile  String

"}}}
" Vimwiki {{{
hi! link VimwikiBold markdownBold
hi! link VimwikiItalic markdownItalic
hi! link VimwikiBoldChar markdownBold
hi! link VimwikiItalicChar markdownItalic
hi! link VimwikiBoldCharT   VimwikiBoldChar
hi! link VimwikiItalicCharT   VimwikiItalicChar
hi VimwikiBoldItalicChar ctermfg=6 ctermbg=NONE cterm=italic,bold gui=italic,bold guifg=#87DFEB guibg=NONE
hi! link VimwikiItalicBoldChar VimwikiBoldItalicChar
hi! link VimwikiBoldItalicCharT VimwikiBoldItalicChar
hi! link VimwikiItalicBoldCharT VimwikiBoldItalicChar
" VimwikiEqInChar xxx links to VimwikiMarkers
" VimwikiDelTextChar xxx links to VimwikiMarkers
" VimwikiEqInCharT xxx links to VimwikiMarkers
" VimwikiCodeCharT xxx links to VimwikiMarkers
" VimwikiDelTextCharT xxx links to VimwikiMarkers
hi! link VimwikiHeaderChar  markdownHeadingDelimiter
hi! link VimwikiList        markdownListMarker
hi! link VimwikiCode        markdownCode
hi! link VimwikiCodeChar    markdownCodeDelimiter
hi! link VimwikiHeader1     markdownH1
hi! link VimwikiHeader2     markdownH2
hi! link VimwikiHeader3     markdownH3
hi! link VimwikiHeader4     markdownH4
hi! link VimwikiHeader5     markdownH5
hi! link VimwikiHeader6     markdownH6

"}}}
" Help {{{
hi! link helpExample         String
hi! link helpHeadline        Title
hi! link helpSectionDelim    Comment
hi! link helpHyperTextEntry  Statement
hi! link helpHyperTextJump   Underlined
hi! link helpURL             Underlined

"}}}
" CtrlP {{{
hi CtrlPMatch   ctermfg=1   cterm=bold gui=bold guifg=#F48FB1
hi CtrlPLinePre ctermfg=6 cterm=bold gui=bold guifg=#87DFEB

"}}}
" Mustache {{{
hi mustacheSection           ctermfg=14  cterm=bold gui=bold guifg=#24D1E7
hi mustacheMarker            ctermfg=6 guifg=#87DFEB
hi mustacheVariable          ctermfg=14 guifg=#24D1E7
hi mustacheVariableUnescape  ctermfg=9 guifg=#EE4F84
hi mustachePartial           ctermfg=13 guifg=#985EFF

"}}}
" Shell {{{
hi shDerefSimple     ctermfg=11 guifg=#F1FF52
hi! link shDerefVar  shDerefSimple

"}}}
" Syntastic {{{
hi SyntasticWarningSign       ctermfg=3  ctermbg=NONE guifg=#F1FA8C guibg=NONE
hi SyntasticErrorSign         ctermfg=1  ctermbg=NONE guifg=#F48FB1 guibg=NONE
hi SyntasticStyleWarningSign  ctermfg=4  ctermbg=NONE guifg=#92B6F4 guibg=NONE
hi SyntasticStyleErrorSign    ctermfg=2  ctermbg=NONE guifg=#A1EFD3 guibg=NONE

"}}}
" Netrw {{{
hi netrwExe       ctermfg=9 guifg=#EE4F84
hi netrwClassify  ctermfg=8  cterm=bold gui=bold guifg=#56687E

"}}}
" Ledger {{{
hi ledgerAccount  ctermfg=11 guifg=#F1FF52
hi! link ledgerMetadata  Comment
hi! link ledgerTransactionStatus  Statement

"}}}
" Diff {{{
hi diffAdded  ctermfg=4 guifg=#92B6F4
hi diffRemoved  ctermfg=1 guifg=#F48FB1
hi! link diffFile  PreProc
hi! link diffLine  Title

"}}}
" Plug {{{
hi plugSha  ctermfg=3 guifg=#F1FA8C

"}}}
" Blade {{{
hi! link bladeStructure  PreProc
hi! link bladeParen      phpParent
hi! link bladeEchoDelim  PreProc

"}}}

" Quickscope {{{
highlight QuickScopePrimary guifg='#afff5f' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
"}}}

" vim: fdm=marker:sw=2:sts=2:et
