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

hi String               ctermfg=1 " 'aaaa'
hi rubySymbol           ctermfg=1 " :aa
hi Identifier           cterm=bold ctermfg=1 "@@var,@var,|var| 
hi Special              cterm=bold ctermfg=1 

hi Normal               cterm=none ctermfg=2
hi Include              cterm=bold ctermfg=2    "include require
hi rubyInterpolation    cterm=bold ctermfg=2 " "#{asdfasd}"

hi Constant             ctermfg=3    "self,1,true
hi rubyPseudoVariable   cterm=bold ctermfg=3    "self
hi Type                 cterm=bold ctermfg=3    "Mod::Deffed, Classdeffed

hi Define               cterm=bold ctermfg=4    "module,class,def,end

hi rubyConstant         ctermfg=5    "SomeClass,SomeModule

hi Statement            ctermfg=6    "do-end,if,private
hi Comment              cterm=bold ctermfg=0
hi PreProc              cterm=reverse ctermbg=1    "#!/bin/sh


hi Function             cterm=bold ctermfg=6    "method define

hi Search               cterm=bold ctermfg=0  ctermbg=3
hi Error                ctermfg=7   ctermbg=1
hi ErrorMsg             ctermfg=7   ctermbg=1
