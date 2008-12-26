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
# setopt autocd
# setopt cdablevars
# setopt globdots
# setopt ignoreeof
# setopt interactivecomments
# setopt nobanghist
# setopt noclobber
# setopt HIST_REDUCE_BLANKS
# setopt HIST_IGNORE_SPACE
# setopt SH_WORD_SPLIT
# setopt nohup

bindkey -e
bindkey '\e[7~' beginning-of-line 
bindkey '\e[8~' end-of-line 
bindkey '\e[2~' overwrite-mode 
bindkey '\e[3~' delete-char 
