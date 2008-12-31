alias df='df -h'
alias grep='grep --color=auto'
alias ls='ls -X --color=auto'
alias ll='ls -X -l -h --color=auto'
alias su='sudo env PATH=$PATH'
alias v='vim'
alias vm='mv'
alias p='pwd'
alias sl='ls'
alias su='sudo env PATH=$PATH'
alias m='mongrel_rails'
alias mr='mongrel_rails restart'
alias mbr='merb -k 4000 && merb -d'
alias td='tail -f log/development.log'
alias sc='./script/console'

alias g='git'
alias gb='git branch'
alias gc='git commit'
alias gs='git status'

JAVA=/opt/jdk1.6.0_10/bin
GEM=/home/aaron/.gem/ruby/1.8/bin
RUBY=/opt/ruby187/bin
ERLANG=/opt/erlang_r12b/bin
R=/opt/R_280/bin
IMAGEMAGICK=/opt/imagemagick_646/bin

export PATH=$GEM:$RUBY:$ERLANG:$R:$JAVA:$IMAGEMAGICK:$PATH
export R_HOME=/opt/R_280/lib/R

autoload -U promptinit compinit colors
colors
promptinit
compinit


export PS1="$prompt_newline%B%~%b$prompt_newline%#"

export HISTFILE=~/.bash_history
export HISTSIZE=5000
export SAVEHIST=5000

setopt autopushd pushdminus pushdsilent pushdtohome
setopt incappendhistory  \
       extendedhistory   \
       histfindnodups  \
       histreduceblanks \
       histignorealldups  \
       histsavenodups
setopt autocd
setopt cdablevars
setopt globdots
setopt ignoreeof
setopt interactivecomments
setopt nobanghist
setopt noclobber
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE
setopt SH_WORD_SPLIT
setopt nohup

bindkey -v
bindkey '\e[7~' beginning-of-line 
bindkey '\e[8~' end-of-line 
bindkey '\e[2~' overwrite-mode 
bindkey '\e[3~' delete-char 

bindkey ^W beginning-of-line
bindkey ^E end-of-line

bindkey ^G forward-char
bindkey ^H backward-char

bindkey ^B backward-word
bindkey ^F forward-word

bindkey ^J down-line-or-history
bindkey ^K up-line-or-history

bindkey ^D delete-word
bindkey ^N backward-delete-word
bindkey ^X delete-char
bindkey ^R history-incremental-search-backward

# "^@"   set-mark-command
# "^A"   beginning-of-line
# "^B"   backward-char
# "^D"   delete-char-or-list
# "^E"   end-of-line
# "^F"   forward-char
# "^G"   send-break
# "^H"   backward-delete-char
# "^I"   expand-or-complete
# "^J"   accept-line
# "^K"   kill-line
# "^L"   clear-screen
# "^M"   accept-line
# "^N"   down-line-or-history
# "^O"   accept-line-and-down-history
# "^P"   up-line-or-history
# "^Q"   push-line
# "^R"   history-incremental-search-backward
# "^S"   history-incremental-search-forward
# "^T"   transpose-chars
# "^U"   kill-whole-line
# "^V"   quoted-insert
# "^W"   backward-kill-word
# "^X^B" vi-match-bracket
# "^X^F" vi-find-next-char
# "^X^J" vi-join
# "^X^K" kill-buffer
# "^X^N" infer-next-history
# "^X^O" overwrite-mode
# "^X^R" _read_comp
# "^X^U" undo
# "^X^V" vi-cmd-mode
# "^X^X" exchange-point-and-mark
# "^X*"  expand-word
# "^X="  what-cursor-position
# "^X?"  _complete_debug
# "^XC"  _correct_filename
# "^XG"  list-expand
# "^Xa"  _expand_alias
# "^Xc"  _correct_word
# "^Xd"  _list_expansions
# "^Xe"  _expand_word
# "^Xg"  list-expand
# "^Xh"  _complete_help
# "^Xm"  _most_recent_file
# "^Xn"  _next_tags
# "^Xr"  history-incremental-search-backward
# "^Xs"  history-incremental-search-forward
# "^Xt"  _complete_tag
# "^Xu"  undo
# "^X~"  _bash_list-choices
# "^Y"   yank
# "^[^D" list-choices
# "^[^G" send-break
# "^[^H" backward-kill-word
# "^[^I" self-insert-unmeta
# "^[^J" self-insert-unmeta
# "^[^L" clear-screen
# "^[^M" self-insert-unmeta
# "^[^_" copy-prev-word
# "^["   expand-history
# "^[!"  expand-history
# "^[\"" quote-region



# case-insensitive,partial-word and then substring completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|[._-]=* r:|=*''l:|=* r:|=*'
zstyle ':completion:*'menu select=long

# allow one error for every three characters typed in approximate completer
zstyle -e ':completion:*:approximate:*' max-errors 'reply=( $((($#PREFIX+$#SUFFIX)/3 ))numeric )'

# completion caching
zstyle ':completion::complete:*' use-cache 1

# add colors to completions
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
