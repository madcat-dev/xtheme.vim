" xtheme.vim - Vim color scheme for 16-color terminals
" --------------------------------------------------------------
" Author:   Madcat (https://github.com/madcat-dev/xtheme.vim)
" Version:  0.0.1
" --------------------------------------------------------------
hi! clear
"set background=dark
set notermguicolors

if exists("syntax_on")
  syntax reset
endif

" Colorscheme name
let g:colors_name = "xtheme"

" --------------------------------------------------------------
" Vim UI {{{
hi! clear Normal
hi! clear VisualNOS
hi! Visual              term=None cterm=None ctermfg=0 ctermbg=7
hi! NonText             term=None cterm=None ctermfg=0 ctermbg=None
hi! link EndOfBuffer    NonText

    " Columns and splits {{{
    hi! VertSplit           term=None cterm=None ctermfg=8 ctermbg=None
    hi! ColorColumn         term=None cterm=None ctermfg=None ctermbg=0

    hi! link LineNr         VertSplit
    hi! clear LineNrAbove
    hi! clear LineNrBelow

    hi! link CursorLine     ColorColumn
    hi! link CursorLineNr   CursorLine
    hi! link CursorColumn   CursorLine

    hi! link FoldColumn     VertSplit
    hi! link SignColumn     VertSplit
    hi! link CursorLineFold FoldColumn
    hi! link CursorLineSign SignColumn
    " }}}

    " Status and Tab lines {{{
    hi! TabLine             term=None cterm=None ctermfg=7   ctermbg=0
    hi! TabLineSel          term=None cterm=None ctermfg=255 ctermbg=2 guifg=#eeeeee
    hi! link TabLineFill    TabLine
    hi! link StatusLine     TabLine
    hi! StatusLineNC        term=None cterm=None ctermfg=242 ctermbg=0 guifg=#6c6c6c
    hi! link WildMenu       TabLineSel
    " }}}

    " Power menu {{{
    hi! link Pmenu          TabLine
    hi! link PmenuSel       TabLineSel
    hi! link PmenuKind      Pmenu
    hi! link PmenuKindSel   PmenuSel
    hi! link PmenuExtra     Pmenu
    hi! link PmenuExtraSel  PmenuSel
    hi! clear PmenuSbar
    hi! clear PmenuThumb
    " }}}

hi! Search              term=None cterm=None ctermfg=7 ctermbg=2
hi! link IncSearch      Search
hi! link CurSearch      Search
hi! link QuickFixLine   Search

hi! Title               term=None cterm=None ctermfg=4 ctermbg=None
hi! link Question       Title
hi! link ModeMsg        Title
hi! link MoreMsg        Title
hi! WarningMsg          term=None      cterm=None      ctermfg=1   ctermbg=None
hi! ErrorMsg            term=None      cterm=None      ctermfg=255 ctermbg=1
hi! SpellBad            term=underline cterm=underline ctermfg=1   ctermbg=None
hi! SpellCap            term=underline cterm=underline ctermfg=4   ctermbg=None
hi! SpellLocal          term=underline cterm=underline ctermfg=5   ctermbg=None
hi! SpellRare           term=underline cterm=underline ctermfg=6   ctermbg=None

hi! Directory           term=None cterm=None ctermfg=6   ctermbg=None
hi! SpecialKey          term=None cterm=None ctermfg=8   ctermbg=None
hi! MatchParen          term=None cterm=None ctermfg=255 ctermbg=160  guifg=#eeeeee guibg=#d70000
hi! Folded              term=None cterm=None ctermfg=6   ctermbg=0
hi! Conceal             term=None cterm=None ctermfg=5   ctermbg=None
" }}}

" Generic syntax {{{
hi! Comment             term=None cterm=None ctermfg=66  ctermbg=None guifg=#5f8787
hi! Constant            term=None cterm=None ctermfg=6   ctermbg=None
hi! String              term=None cterm=None ctermfg=2   ctermbg=None
hi! Statement           term=None cterm=None ctermfg=15  ctermbg=None
hi! Identifier          term=None cterm=None ctermfg=4   ctermbg=None
hi! Type                term=None cterm=None ctermfg=3   ctermbg=None
hi! Character           term=None cterm=None ctermfg=9   ctermbg=None
hi! Underlined          term=underline cterm=underline   ctermfg=None ctermbg=None
hi! Ignore              term=None cterm=None ctermfg=8   ctermbg=0
hi! Todo                term=None cterm=None ctermfg=0   ctermbg=7
hi! Error               term=None cterm=None ctermfg=255 ctermbg=1 guifg=#eeeeee

hi! link Number         Constant
hi! link Boolean        Constant
hi! link Float          Number
hi! link Function       Statement
hi! link Conditional    Statement
hi! link Repeat         Statement
hi! link Operator       Statement
hi! link Keyword        Statement
hi! link Exception      Statement
hi! link Tag            Statement
hi! link PreProc        Identifier
hi! link Include        PreProc
hi! link Define         PreProc
hi! link Macro          PreProc
hi! link PreCondit      PreProc
hi! link StorageClass   Type
hi! link Structure      Type
hi! link Typedef        Type
hi! link Label          Type
hi! link Special        Constant
hi! link SpecialChar    Special
hi! link Delimiter      Special
hi! link SpecialComment Special
hi! link Debug          Special

"}}}

" Diff {{{
hi! DiffDelete          term=None cterm=None ctermfg=255 ctermbg=1 guifg=#eeeeee
hi! DiffAdd             term=None cterm=None ctermfg=255 ctermbg=2 guifg=#eeeeee
hi! DiffChange          term=None cterm=None ctermfg=255 ctermbg=4 guifg=#eeeeee
hi! DiffText            term=None cterm=None ctermfg=10  ctermbg=4
" }}}
