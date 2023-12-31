" xtheme.vim - Airline color scheme for 16-color terminals
" --------------------------------------------------------------
" Author:   Madcat (https://github.com/madcat-dev/xtheme.vim)
" Version:  0.0.1
" --------------------------------------------------------------
let g:airline#themes#xtheme#palette = {}

" Normal mode
let s:N  = [ '', '', 255, 4, 'BOLD' ]
let s:N2 = [ '', '', 4,   0, 'BOLD' ]

" Insert mode
let s:I  = [ '', '', 255, 2, 'BOLD' ]
let s:I2 = [ '', '', 2,   0, 'BOLD' ]

" Visual mode
let s:V  = [ '', '', 255, 1, 'BOLD' ]
let s:V2 = [ '', '', 1,   0, 'BOLD' ]

" Replace mode
let s:R  = [ '', '', 255, 5, 'BOLD' ]
let s:R2 = [ '', '', 5,   0, 'BOLD' ]

let g:airline#themes#xtheme#palette.normal  = airline#themes#generate_color_map(s:N, s:N2, s:N2)
let g:airline#themes#xtheme#palette.insert  = airline#themes#generate_color_map(s:I, s:I2, s:I2)
let g:airline#themes#xtheme#palette.visual  = airline#themes#generate_color_map(s:V, s:V2, s:V2)
let g:airline#themes#xtheme#palette.replace = airline#themes#generate_color_map(s:R, s:R2, s:R2)

let g:airline#themes#xtheme#palette.accents = { 'red': [ '', '', 0, 2, 'BOLD' ] }

" Inactive mode
let s:IN1 = [ '', '', 0, 242 ]
let s:IN2 = [ '', '', 0, 0   ]

let s:IA = [ s:IN1[1], s:IN2[1], s:IN1[3], s:IN2[3], '' ]
let g:airline#themes#xtheme#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)

" Warnings
let s:WI = [ '', '', 255, 1, 'BOLD' ]
let g:airline#themes#xtheme#palette.normal.airline_warning  = s:WI
let g:airline#themes#xtheme#palette.insert.airline_warning  = s:WI
let g:airline#themes#xtheme#palette.visual.airline_warning  = s:WI
let g:airline#themes#xtheme#palette.replace.airline_warning = s:WI

let g:airline#themes#xtheme#palette.normal.airline_error  = s:WI
let g:airline#themes#xtheme#palette.insert.airline_error  = s:WI
let g:airline#themes#xtheme#palette.visual.airline_error  = s:WI
let g:airline#themes#xtheme#palette.replace.airline_error = s:WI

" Tabline
let g:airline#themes#xtheme#palette.tabline = {
      \ 'airline_tab':     [ '', '', 4,   0, 'BOLD' ],
      \ 'airline_tabsel':  [ '', '', 255, 4, 'BOLD' ],
      \ 'airline_tabtype': [ '', '', 255, 4, 'BOLD' ],
      \ 'airline_tabfill': [ '', '', 4,   0, 'BOLD' ],
      \ 'airline_tabmod':  [ '', '', 255, 4, 'BOLD' ]
\ }

if !get(g:, 'loaded_ctrlp', 0)
  finish
endif

let g:airline#themes#xtheme#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '', '', 0, 0, 'BOLD' ],
      \ [ '', '', 0, 0, 'BOLD' ],
      \ [ '', '', 0, 0, 'BOLD' ] )
