autocmd!

set whichwrap=h,l,~,[,]
set wrap

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

let NERDTreeIgnore = ['\.\(zip\|tmp\|log\|SLDPRT\|SLDASM\)$', '\~$']
let g:fuzzy_ignore = "*.zip,*.log,*.tmp,*.SLD*,*.jpg,*.png,*.swf,*.ico,*.bz2,*.gz,*.tar,*.tgz,*.bin"
let g:fuzzy_matching_limit = 70

map <leader>f :FuzzyFinderFile <C-r>=expand('%:~:.')[:-1-len(expand('%:~:.:t'))]<CR><CR>
map <leader>g :FuzzyFinderTextMate<CR>
map <leader>b :FuzzyFinderBuffer<CR>
map <leader>d :execute 'NERDTreeToggle'.getcwd()<CR>
vmap <leader>as :Align! p0P0 \S\+\s<CR> :%s/\s\+$//e<CR>
noremap <leader>dd  :%s/\s\+$//e<CR>
noremap <C-e> :Explore<CR>

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
set matchpairs+=<:>,':',":"

" move current line up or down
nnoremap <C-j> ddp
nnoremap <C-k> ddkP

" * Keystrokes -- Insert Mode
set backspace=start,indent ",eol,start

"complement
imap <C-c> <C-x><C-u>

set encoding=utf-8
set fileencodings=utf-8,ucs-bom,cp936
set fileencoding=utf-8
set termencoding=utf-8

set autoindent
set autoread
"set autochdir
set cursorline
set formatoptions-=t
set grepprg=ack
set grepformat=%f:%l:%m
set helplang=En
set hidden
set history=500
set hlsearch
set ignorecase
set incsearch
set infercase
set magic
set mouse=nv
set nomodeline
set nocompatible

set number
set ruler

set smartindent
set showmatch
set shortmess+=r
set showmode
set showcmd

set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set smarttab

set title
set titleold=Linux
set titlestring=%<%f%m

set shiftround
set shortmess=atI
"set textwidth=79
set virtualedit=all
set wildmenu
set wildmode=list:longest,full
colorscheme sexy
syntax on
set smartcase
set visualbell t_vb=
