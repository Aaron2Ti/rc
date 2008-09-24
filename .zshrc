alias df='df -h'
alias grep='grep --color=auto'
alias ls='ls -X --color=auto'
alias v='vim'
alias vm='mv'
alias su='sudo su'

autoload -U compinit colors
colors
compinit

export HISTFILE=~/.bash_history
export HISTSIZE=5000
export SAVEHIST=5000

# setopt autopushd pushdminus pushdsilent pushdtohome
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
