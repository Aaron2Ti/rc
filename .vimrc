autocmd!
autocmd BufNewFile,BufRead *.txt set filetype=human
autocmd BufNewFile,BufRead *.haml set filetype=haml
autocmd BufNewFile,BufRead *.sass set filetype=sass
autocmd BufNewFile,BufRead *.ejs set filetype=javascript
"autocmd BufNewFile,BufRead *.* hi CursorLine term=none 

filetype on

" * Keystrokes -- Moving Around
" have the h and l cursor keys wrap between lines
" (LIKE <sPACE> AND <bKsPC> DO BY DEFAULT), 
" AND ~ COVERT CASE OVER LINE BREAKS; ALSO HAVE the cursor keys
" wrap in insert mode:
set whichwrap=h,l,~,[,]

" [<Space> by default is like l, <BkSpc> like h, and - like k.]
noremap <BS> <PageUp>
noremap - <PageUp>
noremap <Space> <PageDown>

" EnhancedCommentify
noremap <S-c> :call EnhancedCommentify('', 'comment')<CR>
noremap <S-d> :call EnhancedCommentify('', 'decomment')<CR>

" scroll the window by a couple of lines up/down with <Ins>/<Del> 
" (like in `Lynx'):
" [<Ins> by default is like i, and <Del> like x.]
noremap <Ins> 4<C-Y>
noremap <Del> 4<C-E>

nnoremap <F1> :tabnew<CR>
nnoremap <F2> :ls<CR>
nnoremap <F3> :previous<CR>
nnoremap <F4> :next<CR>

" use <F6> to cycle through split windows 
" and <Shift>+<F6> to cycle backwards, where possible:
nnoremap <F6> <C-W>w
nnoremap <S-F6> <C-W>W
nnoremap <F7> <C-W>100>
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
set backspace=indent,eol,start

noremap <C-e> :Explore<CR>

" customize commands for rails navgation
command Rconfig Redit config
command Renv Redit config/environment.rb
command Rdb Redit config/database.yml
command Rroute Redit config/routes.rb

set encoding=utf-8
set fileencoding=utf-8
set termencoding=cp936

set autoindent
set autoread
"set autochdir
set cursorline
set expandtab
set formatoptions-=t
set grepprg=grep\ -nH\ $*
set helplang=En
set history=500
set hlsearch
set ignorecase
set incsearch
set infercase
set magic
set mouse=nv
set nomodeline
set nocompatible
set nu
set ruler
set smartindent
set showmatch
set shortmess+=r
set showmode
set showcmd
set shiftwidth=2
set softtabstop=2
set tabstop=2
set shiftround
"set textwidth=79
set virtualedit=all 
set wildmenu
set wildmode=list:longest,full
colorscheme sexy
filetype plugin indent on
syntax on
set smartcase
"set foldmethod=indent
"set foldopen=all
"set foldclose=all
