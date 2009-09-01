colorscheme sexy
autocmd!
" remove end whitespaces
autocmd BufWritePre * :%s/\s\+$//e

nnoremap ' `
nnoremap ` '

" [<Space> by default is like l, <BkSpc> like h, and - like k.]
noremap <BS> <PageUp>
noremap - <PageUp>
noremap <Space> <C-d>

" EnhancedCommentify
noremap <S-c> :call EnhancedCommentify('', 'comment')<CR>
noremap <S-d> :call EnhancedCommentify('', 'decomment')<CR>

" scroll the window by a couple of lines up/down with <Ins>/<Del>
" [<Ins> by default is like i, and <Del> like x.]
noremap <Ins> 4<C-Y>
noremap <Del> 4<C-E>

let mapleader = ','

let NERDTreeIgnore = ['\.\(zip\|tmp\|log\|wrl\|SLDPRT\|SLDASM\)$', '\~$']

let g:fuzzy_ignore = "*.zip,*.log,*.tmp,*.SLD*,*.jpg,*.png,*.swf,*.ico,*.bz2,*.gz,*.tar,*.tgz,*.bin,*.sld*,*.wrl"
let g:fuzzy_matching_limit = 70

map <leader>f :FuzzyFinderFile <C-r>=expand('%:~:.')[:-1-len(expand('%:~:.:t'))]<CR><CR>
map <leader>g :FuzzyFinderTextMate<CR>
map <leader>b :FuzzyFinderBuffer<CR>
map <leader>d :execute 'NERDTreeToggle'.getcwd()<CR>

noremap <C-A> <C-T>
noremap <C-S> <C-]>

vmap <leader>as :Align! p0P0 \S\+\s<CR>

" Delete whitespace at the line ending
noremap <leader>dd  :%s/\s\+$//e<CR>
" Delete all the buffers
noremap <leader>bd  :1, 1000 bd<CR>
noremap <C-e> :Explore<CR>
noremap <leader>e  :Redit config/environment.rb<CR>
noremap <leader>r  :Redit config/routes.rb<CR>

" use <F6> to cycle through split windows
" and <Shift>+<F6> to cycle backwards, where possible:
nnoremap <F6> <C-W>w
nnoremap <S-F6> <C-W>W
nnoremap <F8> :w !ruby<CR>

" use <Ctrl>+N/<Ctrl>+P to cycle through files:
" [<Ctrl>+N by default is like j, and <Ctrl>+P like k.]
nnoremap <C-N> :next<CR>
nnoremap <C-P> :prev<CR>

" have % bounce between angled brackets, as well as t'other kinds:
set matchpairs+=<:>

" move current line up or down
nnoremap <C-j> ddp
nnoremap <C-k> ddkP

" * Keystrokes -- Insert Mode
set backspace=start,indent ",eol,start

"complement
imap <C-c> <C-x><C-u>

set encoding=utf-8 fileencodings=utf-8,ucs-bom,cp936 fileencoding=utf-8 termencoding=utf-8

set autoindent smartindent autoread
set cursorline mouse=nv nomodeline formatoptions-=t
set grepprg=ack grepformat=%f:%l:%m
set helplang=En history=500

set hlsearch incsearch smartcase showmatch shortmess+=r infercase

set magic hidden

set nocompatible

set whichwrap=h,l,~,[,] wrap

set number ruler showmode showcmd

set expandtab smarttab shiftwidth=2 softtabstop=2 tabstop=2

set titlestring=%<%f%m
" title titleold=OSX

set shiftround shortmess=atI virtualedit=all
set wildmenu wildmode=list:longest,full

set visualbell t_vb=
set guioptions=egmrLt
set guifont=Monaco:h16 guifontwide=Kai:h16

syntax on

if has('gui')
  set fuoptions=maxvert,maxhorz
end
