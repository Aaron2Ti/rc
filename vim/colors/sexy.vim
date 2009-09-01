set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "sexy"

" color 0-7 corresponds to low-intensity (normal) colours
" 0=black, 1=red, 2=green, 3=yellow, 4=blue, 5=magenta, 6=cyan, 7=white
" color 8-15 corresponds to high-intensity
" bold = bright foreground, blink = bright background

hi Pmenu      ctermfg=4 ctermbg=7 cterm=bold guibg=grey20
hi PmenuSel   ctermfg=1 ctermbg=4 guifg=red  guibg=grey60  gui=bold
hi PmenuThumb ctermfg=0

hi String               ctermfg=1     guifg=#ff2020 "'aaaa'
hi rubySymbol ctermfg=1 guifg=#ff2020 ":aa
hi Identifier cterm=bold ctermfg=1     guifg=#ff8072 gui=bold "@@var,@var,|var|
hi Special    cterm=bold ctermfg=1     guifg=Orange gui=bold

hi Normal               cterm=none ctermfg=2 guifg=#70ef70 guibg=#050505
hi Include              cterm=bold ctermfg=2 guifg=#a5efc9 cterm=bold ctermfg=2    "include require
hi rubyInterpolation    cterm=bold ctermfg=2 guifg=#20ff60 " "#{asdfasd}"

hi Constant             ctermfg=3 guifg=#ffd005   "1,true
hi rubyPseudoVariable   cterm=bold ctermfg=3 guifg=#f0f045 gui=bold   "self
hi Type                 cterm=bold ctermfg=3 guifg=#ffe799   "Mod::Deffed, Classdeffed

hi Define               cterm=bold ctermfg=4 guifg=#6786ff  cterm=bold ctermfg=4      "module,class,def,end

hi rubyConstant         ctermfg=5 cterm=bold guifg=#b1d3ff gui=bold      "SomeClass,SomeModule

hi Statement             term=bold cterm=bold ctermfg=6 guifg=#00efef gui=bold ctermfg=6   "do-end,if,private
hi Comment              cterm=bold ctermfg=0 guifg=#999999 gui=bold
hi PreProc              cterm=reverse ctermbg=1 guifg=red guibg=#10f0f0  cterm=reverse ctermbg=1   "#!/bin/sh

hi Function             cterm=bold ctermfg=6 guifg=#ff60e5 gui=bold       "method define

hi Search               cterm=bold ctermfg=0  ctermbg=3 guibg=#fde52f guifg=#ff4759 gui=bold
hi Error                ctermfg=7   ctermbg=1 guifg=White guibg=#ff2020
hi ErrorMsg             ctermfg=7   ctermbg=1 guifg=White guibg=#ff2020

hi Cursor guibg=khaki guifg=slategrey
hi VertSplit term=reverse cterm=reverse gui=reverse guibg=#c2bfa5 guifg=grey30

hi Folded guibg=black guifg=grey40
hi FoldColumn guibg=black guifg=grey20

hi IncSearch guifg=yellow guibg=black
hi ModeMsg term=bold cterm=bold gui=bold guifg=goldenrod
hi MoreMsg term=bold ctermfg=LightGreen gui=bold guifg=SeaGreen
hi NonText guifg=RoyalBlue guibg=grey15
hi Question guifg=springgreen
hi SpecialKey term=bold ctermfg=LightBlue guifg=yellowgreen
hi StatusLine term=reverse,bold cterm=reverse,bold gui=reverse,bold guibg=#c2bfa5 guifg=black
hi StatusLineNC term=reverse cterm=reverse gui=reverse guibg=#c2bfa5 guifg=grey40

hi Title guifg=gold gui=bold
hi Visual term=reverse ctermbg=black guibg=grey20 guifg=pink
hi VisualNOS cterm=bold,underline

hi WarningMsg guifg=salmon
hi Operator guifg=Red ctermfg=Red
hi Structure guifg=green ctermfg=green
hi LineNr guifg=grey50
hi Ignore ctermfg=DarkGrey guifg=grey40
hi Todo guifg=orangered guibg=yellow2
hi Directory ctermfg=darkcyan
hi WildMenu ctermfg=0 ctermbg=3
hi DiffAdd ctermbg=4
hi DiffChange ctermbg=5
hi DiffDelete cterm=bold ctermfg=4 ctermbg=6
hi DiffText cterm=bold ctermbg=1
hi Underlined cterm=underline ctermfg=5
hi SpellErrors guifg=#101010 guibg=#ff2020

"hi TabLine              ctermfg=15  ctermbg=0
"hi TabLineFill          ctermfg=15  ctermbg=0   cterm=underline
"hi TabLineSel           ctermfg=0   ctermbg=86

hi CursorColumn term=reverse ctermbg=Black guibg=grey15
hi CursorLine term=underline cterm=underline guibg=grey15

hi DiffAdd term=bold ctermbg=DarkBlue guibg=DarkBlue
hi DiffChange term=bold ctermbg=DarkMagenta guibg=DarkMagenta
hi DiffDelete term=bold ctermfg=Blue ctermbg=DarkCyan gui=bold guifg=Blue guibg=DarkCyan
hi DiffText term=reverse cterm=bold ctermbg=Red gui=bold guibg=Red
hi Directory term=bold ctermfg=LightCyan guifg=Cyan
hi ErrorMsg term=standout ctermbg=DarkRed ctermfg=White guibg=Red guifg=White
hi Folded term=standout ctermbg=LightGrey ctermfg=DarkBlue guibg=LightGrey guifg=DarkBlue
hi FoldColumn term=standout ctermbg=LightGrey ctermfg=DarkBlue guibg=Grey guifg=DarkBlue
hi NonText term=bold ctermfg=LightBlue gui=bold guifg=LightBlue guibg=grey5
hi Question term=standout ctermfg=LightGreen gui=bold guifg=Green
hi Title term=bold ctermfg=LightMagenta gui=bold guifg=Magenta
hi VisualNOS term=underline,bold cterm=underline,bold gui=underline,bold
hi WarningMsg term=standout ctermfg=LightRed guifg=Red
hi WildMenu term=standout ctermbg=Yellow ctermfg=Black guibg=Yellow guifg=Black
