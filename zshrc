######################################################################################
alias rabbitmq-server='/opt/rabbitmq_server/sbin/rabbitmq-server'
#alias rabbitmq-multi='/opt/rabbitmq_server-1.5.5/sbin/rabbitmq-multi'
#alias rabbitmqctl='/opt/rabbitmq_server-1.5.5/sbin/rabbitmqctl'
######################################################################################
alias df='df -h'
alias grep='grep -i --color'
alias ls='ls -G'
alias ll='ls -G -l -h'
alias l='less'
alias ln='ln -s'
alias vm='mv'
alias p='pwd'
alias sl='ls'
alias m='mongrel_rails'
alias mr='mongrel_rails restart'
alias td='tail -f log/development.log'
alias sc='./script/console'
alias top='top -ocpu -Orsize -Uaaron'
alias 'ps?'='ps ax | ack'
alias 'gem?'='gem list | ack'
alias ss='ssh administrator@124.207.130.100'
alias wget='curl -O'
alias vi='mvim'
alias g='git'
alias gb='git branch'
alias gc='git commit'
alias gs='git status'
######################################################################################

# Rubygems ??? should be unset when setup a new ruby environment
export RUBYOPT='rubygems'

# R for RSRuby
export R_HOME=/Library/Frameworks/R.framework/Resources

# ImageMagick
#export MAGICK_HOME=/opt/ImageMagick-6.5.3
#export DYLD_LIBRARY_PATH=$MAGICK_HOME/lib:$DYLD_LIBRARY_PATH

# LD_LIBRARY_PATH

# ack search highlight color
export ACK_COLOR_MATCH='red'

# GSL=/opt/gsl-1.12/bin
#NGINX=/opt/nginx-0.7.33/sbin
#JRUBY=/opt/jruby-1.2.0/bin
RUBY=/Volumes/Data/Users/aaron/.ruby/bin

MAC_PORT=/opt/local/bin

export PATH=/usr/local/bin:/usr/local/sbin:/usr/X11/bin:/usr/bin:/usr/sbin:/bin:/sbin

export PATH=$RUBY:$MAC_PORT:$PATH

export MANPATH=/opt/local/share/man:$MANPATH

######################################################################################
export HISTFILE=~/.bash_history
export HISTSIZE=15000
export SAVEHIST=15000

autoload -U promptinit compinit colors
colors
promptinit
compinit

export PS1="$prompt_newline%B%~%b$prompt_newline%#"

setopt autopushd pushdminus pushdsilent pushdtohome promptsubst autocd cdablevars \
       globdots ignoreeof nobanghist noclobber nohup
setopt incappendhistory extendedhistory histfindnodups histreduceblanks \
       histignorealldups histsavenodups interactivecomments
setopt HIST_REDUCE_BLANKS HIST_IGNORE_SPACE SH_WORD_SPLIT

######################################################################################
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
######################################################################################

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

######################################################################################
# case-insensitive,partial-word and then substring completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|[._-]=* r:|=*''l:|=* r:|=*'
zstyle ':completion:*'menu select=long

# allow one error for every three characters typed in approximate completer
zstyle -e ':completion:*:approximate:*' max-errors 'reply=( $((($#PREFIX+$#SUFFIX)/3 ))numeric )'

# completion caching
zstyle ':completion::complete:*' use-cache 1

# add colors to completions
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
######################################################################################
